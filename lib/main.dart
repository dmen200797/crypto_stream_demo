import 'package:crypto_stream_demo/data/home/data_sources/coin_api.dart';
import 'package:crypto_stream_demo/data/home/repositories/home_repository_impl.dart';
import 'package:crypto_stream_demo/domain/home/repositories/home_repository.dart';
import 'package:crypto_stream_demo/presentation/app_routing.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;
final dio = Dio();

void main() {
  getIt.registerSingleton(CoinApi(dio));
  getIt.registerFactory<HomeRepository>(
    () => HomeRepositoryImpl(
      getIt<CoinApi>(),
    ),
  );
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
