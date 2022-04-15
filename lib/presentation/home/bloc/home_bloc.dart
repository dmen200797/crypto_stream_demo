import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:crypto_stream_demo/domain/home/entities/coin_entity.dart';
import 'package:crypto_stream_demo/domain/home/usecase/home_usecase.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeUseCase _useCase;
  HomeBloc(this._useCase) : super(HomeInitial()) {
    on<GetCoinListEvent>((event, emit) async{
      // try {
        CoinEntity coinList = await _useCase.getListCoin();
        coinList.listCoin.forEach((element) {
          print(element.price);
        });
        emit(GotCoinListState(coinList));
      // } catch(e) {
      //   print('=============ERROR: $e');
      // }
    });
  }
}
