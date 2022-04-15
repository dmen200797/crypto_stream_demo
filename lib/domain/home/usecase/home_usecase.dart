import 'package:crypto_stream_demo/domain/home/entities/coin_entity.dart';
import 'package:crypto_stream_demo/domain/home/repositories/home_repository.dart';

class HomeUseCase {
  final HomeRepository _repository;

  HomeUseCase(this._repository);

  Future<CoinEntity> getListCoin() => _repository.getCoinList();
}
