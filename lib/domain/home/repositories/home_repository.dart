import 'package:crypto_stream_demo/data/home/models/coin_response.dart';

abstract class HomeRepository {
  Future<CoinListResponse> getCoinList();
}