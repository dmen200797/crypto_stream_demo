import 'package:crypto_stream_demo/data/home/data_sources/coin_api.dart';
import 'package:crypto_stream_demo/data/home/repositories/home_repository_impl.dart';
import 'package:crypto_stream_demo/domain/home/repositories/home_repository.dart';
import 'package:crypto_stream_demo/presentation/app_routing.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

Future<void> main() async {
  final dio = Dio(
      BaseOptions(
        baseUrl: 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/',
      )
  );
  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) {
      options.headers['X-CMC_PRO_API_KEY'] = '7c6c6e99-8d37-4be6-8672-9c0305d5836a';
      return handler.next(options);
    }
  ));
  getIt.registerSingleton(CoinApi(dio));
  getIt.registerFactory<HomeRepository>(
    () => HomeRepositoryImpl(
      getIt<CoinApi>(),
    ),
  );
  // String? flavor = await const MethodChannel('flavor')
  //     .invokeMethod<String>('getFlavor');
  // print('=======FLAVOR $flavor');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () => MaterialApp(
        builder: (context, child) {
          ScreenUtil.setContext(context);
          return child ?? const SizedBox();
        },
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: RouteDefine.splashScreen.name,
        onGenerateRoute: AppRouting.generateRoute,
      ),
    );
  }
}
