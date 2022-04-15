import 'package:crypto_stream_demo/data/home/models/coin_response.dart';

class CoinEntity {
  List<Data> listCoin;

  List<DataEntity> get dataEntity => listCoin;
  CoinEntity({required this.listCoin});
}

class DataEntity {
  String coinName;
  String coinSymbol;
  double price;
  double percentChange;

  DataEntity({
    required this.coinName,
    required this.price,
    required this.percentChange,
    required this.coinSymbol,
  });
}
