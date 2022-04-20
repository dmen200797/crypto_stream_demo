import 'package:json_annotation/json_annotation.dart';

part 'coin_response.g.dart';

@JsonSerializable(explicitToJson: true, anyMap: true)
class CoinListResponse {
  CoinListResponse({
     this.status,
     this.data,
  });

  Status? status;
  List<Data>? data;

  factory CoinListResponse.fromJson(Map<String, dynamic> json) =>
      _$CoinListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CoinListResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Data {
  Data({
     this.id,
     this.name,
     this.symbol,
     this.slug,
     this.numMarketPairs,
     this.dateAdded,
     this.tags,
     this.maxSupply,
     this.circulatingSupply,
     this.totalSupply,
     this.platform,
     this.cmcRank,
     this.selfReportedCirculatingSupply,
     this.selfReportedMarketCap,
     this.lastUpdated,
     this.quote,
  });

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

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Quote {
  Quote({
     this.usd,
  });

  @JsonKey(name: 'USD')
  Usd? usd;

  factory Quote.fromJson(Map<String, dynamic> json) => _$QuoteFromJson(json);

  Map<String, dynamic> toJson() => _$QuoteToJson(this);
}

@JsonSerializable()
class Usd {
  Usd({
     this.price,
     this.volume24H,
     this.volumeChange24H,
     this.percentChange1H,
     this.percentChange24H,
     this.percentChange7D,
     this.percentChange30D,
     this.percentChange60D,
     this.percentChange90D,
     this.marketCap,
     this.marketCapDominance,
     this.fullyDilutedMarketCap,
     this.lastUpdated,
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
     this.timestamp,
     this.errorCode,
     this.errorMessage,
     this.elapsed,
     this.creditCount,
     this.notice,
     this.totalCount,
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
