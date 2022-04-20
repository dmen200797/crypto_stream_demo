import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:crypto_stream_demo/domain/home/usecase/home_usecase.dart';
import 'package:equatable/equatable.dart';

import '../../../data/home/models/coin_response.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeUseCase _useCase;
  HomeBloc(this._useCase) : super(HomeInitial()) {
    on<GetCoinListEvent>((event, emit) async{
      try {
        while (true) {
          CoinListResponse coinList = await _useCase.getListCoin();
          emit(GotCoinListState(coinList));
          print(coinList.data?[0].quote?.usd?.price);
          await Future.delayed(const Duration(minutes: 1));
        }
      // CoinListResponse coinList = await _useCase.getListCoin();
      //   emit(GotCoinListState(coinList));
      } catch(e) {
        print('=============ERROR: $e');
      }
    });
  }
}
