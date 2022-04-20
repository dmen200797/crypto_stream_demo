import 'package:crypto_stream_demo/data/home/data_sources/coin_api.dart';
import 'package:crypto_stream_demo/data/home/models/coin_response.dart';
import 'package:crypto_stream_demo/domain/home/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final CoinApi coinApi;

  HomeRepositoryImpl(this.coinApi);

  @override
  Future<CoinListResponse> getCoinList() async {
    try {
      return await coinApi.getCoinList(10);
    } catch (e) {
      throw Exception(e);
    }
  }


}
