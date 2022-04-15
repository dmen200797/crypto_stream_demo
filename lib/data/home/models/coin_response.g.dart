// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoinListResponse _$CoinListResponseFromJson(Map<String, dynamic> json) =>
    CoinListResponse(
      status: json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..listCoin = (json['listCoin'] as List<dynamic>)
        .map((e) => Data.fromJson(e as Map<String, dynamic>))
        .toList();

Map<String, dynamic> _$CoinListResponseToJson(CoinListResponse instance) =>
    <String, dynamic>{
      'listCoin': instance.listCoin.map((e) => e.toJson()).toList(),
      'status': instance.status?.toJson(),
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as int?,
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
      slug: json['slug'] as String?,
      numMarketPairs: json['numMarketPairs'] as int?,
      dateAdded: json['dateAdded'] == null
          ? null
          : DateTime.parse(json['dateAdded'] as String),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      maxSupply: json['maxSupply'] as int?,
      circulatingSupply: json['circulatingSupply'] as int?,
      totalSupply: json['totalSupply'] as int?,
      platform: json['platform'],
      cmcRank: json['cmcRank'] as int?,
      selfReportedCirculatingSupply: json['selfReportedCirculatingSupply'],
      selfReportedMarketCap: json['selfReportedMarketCap'],
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
      quote: json['quote'] == null
          ? null
          : Quote.fromJson(json['quote'] as Map<String, dynamic>),
    )
      ..coinName = json['coinName'] as String
      ..coinSymbol = json['coinSymbol'] as String
      ..price = (json['price'] as num).toDouble()
      ..percentChange = (json['percentChange'] as num).toDouble();

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'coinName': instance.coinName,
      'coinSymbol': instance.coinSymbol,
      'price': instance.price,
      'percentChange': instance.percentChange,
      'id': instance.id,
      'name': instance.name,
      'symbol': instance.symbol,
      'slug': instance.slug,
      'numMarketPairs': instance.numMarketPairs,
      'dateAdded': instance.dateAdded?.toIso8601String(),
      'tags': instance.tags,
      'maxSupply': instance.maxSupply,
      'circulatingSupply': instance.circulatingSupply,
      'totalSupply': instance.totalSupply,
      'platform': instance.platform,
      'cmcRank': instance.cmcRank,
      'selfReportedCirculatingSupply': instance.selfReportedCirculatingSupply,
      'selfReportedMarketCap': instance.selfReportedMarketCap,
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
      'quote': instance.quote?.toJson(),
    };

Quote _$QuoteFromJson(Map<String, dynamic> json) => Quote(
      usd: json['USD'] == null
          ? null
          : Usd.fromJson(json['USD'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QuoteToJson(Quote instance) => <String, dynamic>{
      'USD': instance.usd?.toJson(),
    };

Usd _$UsdFromJson(Map<String, dynamic> json) => Usd(
      price: (json['price'] as num?)?.toDouble(),
      volume24H: (json['volume_24h'] as num?)?.toDouble(),
      volumeChange24H: (json['volumeChange24H'] as num?)?.toDouble(),
      percentChange1H: (json['percent_change_1h'] as num?)?.toDouble(),
      percentChange24H: (json['percentChange24H'] as num?)?.toDouble(),
      percentChange7D: (json['percentChange7D'] as num?)?.toDouble(),
      percentChange30D: (json['percentChange30D'] as num?)?.toDouble(),
      percentChange60D: (json['percentChange60D'] as num?)?.toDouble(),
      percentChange90D: (json['percentChange90D'] as num?)?.toDouble(),
      marketCap: (json['marketCap'] as num?)?.toDouble(),
      marketCapDominance: (json['marketCapDominance'] as num?)?.toDouble(),
      fullyDilutedMarketCap:
          (json['fullyDilutedMarketCap'] as num?)?.toDouble(),
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
    );

Map<String, dynamic> _$UsdToJson(Usd instance) => <String, dynamic>{
      'price': instance.price,
      'volume_24h': instance.volume24H,
      'volumeChange24H': instance.volumeChange24H,
      'percent_change_1h': instance.percentChange1H,
      'percentChange24H': instance.percentChange24H,
      'percentChange7D': instance.percentChange7D,
      'percentChange30D': instance.percentChange30D,
      'percentChange60D': instance.percentChange60D,
      'percentChange90D': instance.percentChange90D,
      'marketCap': instance.marketCap,
      'marketCapDominance': instance.marketCapDominance,
      'fullyDilutedMarketCap': instance.fullyDilutedMarketCap,
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
    };

Status _$StatusFromJson(Map<String, dynamic> json) => Status(
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
      errorCode: json['errorCode'] as int?,
      errorMessage: json['errorMessage'],
      elapsed: json['elapsed'] as int?,
      creditCount: json['creditCount'] as int?,
      notice: json['notice'],
      totalCount: json['totalCount'] as int?,
    );

Map<String, dynamic> _$StatusToJson(Status instance) => <String, dynamic>{
      'timestamp': instance.timestamp?.toIso8601String(),
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
      'elapsed': instance.elapsed,
      'creditCount': instance.creditCount,
      'notice': instance.notice,
      'totalCount': instance.totalCount,
    };
