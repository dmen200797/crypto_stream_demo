import 'package:crypto_stream_demo/domain/home/entities/coin_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'coin_response.g.dart';

@JsonSerializable(explicitToJson: true)
class CoinListResponse extends CoinEntity {
  CoinListResponse({
    required this.status,
    required this.data,
  }) : super(listCoin: data ?? []);

  Status? status;
  List<Data>? data;

  factory CoinListResponse.fromJson(Map<String, dynamic> json) =>
      _$CoinListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CoinListResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Data extends DataEntity {
  Data({
    required this.id,
    required this.name,
    required this.symbol,
    required this.slug,
    required this.numMarketPairs,
    required this.dateAdded,
    required this.tags,
    required this.maxSupply,
    required this.circulatingSupply,
    required this.totalSupply,
    required this.platform,
    required this.cmcRank,
    required this.selfReportedCirculatingSupply,
    required this.selfReportedMarketCap,
    required this.lastUpdated,
    required this.quote,
  }) : super(
          percentChange: quote?.usd?.percentChange1H ?? 0,
          coinSymbol: symbol ?? '',
          coinName: name ?? '',
          price: quote?.usd?.price ?? 0,
        );

  int? id;
  String? name;
  String? symbol;
  String? slug;
  int? numMarketPairs;
  DateTime? dateAdded;
  List<String?>? tags;
  int? maxSupply;
  int? circulatingSupply;
  int? totalSupply;
  dynamic platform;
  int? cmcRank;
  dynamic selfReportedCirculatingSupply;
  dynamic selfReportedMarketCap;
  DateTime? lastUpdated;
  Quote? quote;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DataToJson(this);

// DataEntity toEntity() => DataEntity(
//       coinName: name ?? '',
//       price: quote?.usd?.price ?? 0,
//       percentChange: quote?.usd?.percentChange1H ?? 0,
//       coinSymbol: symbol ?? '',
//     );
}

@JsonSerializable(explicitToJson: true)
class Quote {
  Quote({
    required this.usd,
  });

  @JsonKey(name: 'USD')
  Usd? usd;

  factory Quote.fromJson(Map<String, dynamic> json) => _$QuoteFromJson(json);

  Map<String, dynamic> toJson() => _$QuoteToJson(this);
}

@JsonSerializable()
class Usd {
  Usd({
    required this.price,
    required this.volume24H,
    required this.volumeChange24H,
    required this.percentChange1H,
    required this.percentChange24H,
    required this.percentChange7D,
    required this.percentChange30D,
    required this.percentChange60D,
    required this.percentChange90D,
    required this.marketCap,
    required this.marketCapDominance,
    required this.fullyDilutedMarketCap,
    required this.lastUpdated,
  });

  double? price;
  @JsonKey(name: 'volume_24h')
  double? volume24H;
  double? volumeChange24H;
  @JsonKey(name: 'percent_change_1h')
  double? percentChange1H;
  double? percentChange24H;
  double? percentChange7D;
  double? percentChange30D;
  double? percentChange60D;
  double? percentChange90D;
  double? marketCap;
  double? marketCapDominance;
  double? fullyDilutedMarketCap;
  DateTime? lastUpdated;

  factory Usd.fromJson(Map<String, dynamic> json) => _$UsdFromJson(json);

  Map<String, dynamic> toJson() => _$UsdToJson(this);
}

@JsonSerializable()
class Status {
  Status({
    required this.timestamp,
    required this.errorCode,
    required this.errorMessage,
    required this.elapsed,
    required this.creditCount,
    required this.notice,
    required this.totalCount,
  });

  DateTime? timestamp;
  int? errorCode;
  dynamic errorMessage;
  int? elapsed;
  int? creditCount;
  dynamic notice;
  int? totalCount;

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);

  Map<String, dynamic> toJson() => _$StatusToJson(this);
}
