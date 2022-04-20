import 'package:crypto_stream_demo/data/home/models/coin_response.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'coin_api.g.dart';

@RestApi()
abstract class CoinApi {
  factory CoinApi(Dio dio, {String baseUrl}) = _CoinApi;

  @GET("/latest")
  // @Headers(<String, dynamic>{
  //   "X-CMC_PRO_API_KEY": "7c6c6e99-8d37-4be6-8672-9c0305d5836a"
  // })
  Future<CoinListResponse> getCoinList(
    @Query('limit') int limit,
  );
}
