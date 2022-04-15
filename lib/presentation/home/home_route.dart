import 'package:crypto_stream_demo/domain/home/usecase/home_usecase.dart';
import 'package:crypto_stream_demo/main.dart';
import 'package:crypto_stream_demo/presentation/home/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/home/repositories/home_repository.dart';
import 'bloc/home_bloc.dart';

class HomeRoute {
  static Widget get route => BlocProvider(
        create: (context) => HomeBloc(
          HomeUseCase(
            getIt<HomeRepository>(),
          ),
        )..add(GetCoinListEvent()),
        child: const HomeScreen(),
      );
}
