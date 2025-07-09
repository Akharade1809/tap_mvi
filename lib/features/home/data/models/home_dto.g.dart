// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeDto _$HomeDtoFromJson(Map<String, dynamic> json) => _HomeDto(
  logo: json['logo'] as String,
  isin: json['isin'] as String,
  rating: json['rating'] as String,
  companyName: json['company_name'] as String,
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$HomeDtoToJson(_HomeDto instance) => <String, dynamic>{
  'logo': instance.logo,
  'isin': instance.isin,
  'rating': instance.rating,
  'company_name': instance.companyName,
  'tags': instance.tags,
};
