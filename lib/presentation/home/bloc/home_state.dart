part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}

class HomeInitial extends HomeState {
  @override
  List<Object> get props => [];
}

class GotCoinListState extends HomeState {
  final CoinEntity coinEntity;

  const GotCoinListState(this.coinEntity);

  @override
  List<Object?> get props => [coinEntity];
}
