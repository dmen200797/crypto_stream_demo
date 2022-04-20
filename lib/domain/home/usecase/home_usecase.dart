import 'package:crypto_stream_demo/data/home/models/coin_response.dart';
import 'package:crypto_stream_demo/domain/home/repositories/home_repository.dart';

class HomeUseCase {
  final HomeRepository _repository;

  HomeUseCase(this._repository);

  Future<CoinListResponse> getListCoin() => _repository.getCoinList();
}
