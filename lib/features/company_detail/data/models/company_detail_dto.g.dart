// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyDetailDto _$CompanyDetailDtoFromJson(Map<String, dynamic> json) =>
    _CompanyDetailDto(
      logo: json['logo'] as String,
      companyName: json['company_name'] as String,
      description: json['description'] as String,
      isin: json['isin'] as String,
      status: json['status'] as String,
      prosAndCons: ProsAndConsDto.fromJson(
        json['pros_and_cons'] as Map<String, dynamic>,
      ),
      financials: FinancialsDto.fromJson(
        json['financials'] as Map<String, dynamic>,
      ),
      issuerDetails: IssuerDetailDto.fromJson(
        json['issuer_details'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$CompanyDetailDtoToJson(_CompanyDetailDto instance) =>
    <String, dynamic>{
      'logo': instance.logo,
      'company_name': instance.companyName,
      'description': instance.description,
      'isin': instance.isin,
      'status': instance.status,
      'pros_and_cons': instance.prosAndCons,
      'financials': instance.financials,
      'issuer_details': instance.issuerDetails,
    };

_ProsAndConsDto _$ProsAndConsDtoFromJson(Map<String, dynamic> json) =>
    _ProsAndConsDto(
      pros: (json['pros'] as List<dynamic>).map((e) => e as String).toList(),
      cons: (json['cons'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ProsAndConsDtoToJson(_ProsAndConsDto instance) =>
    <String, dynamic>{'pros': instance.pros, 'cons': instance.cons};

_FinancialsDto _$FinancialsDtoFromJson(Map<String, dynamic> json) =>
    _FinancialsDto(
      ebitda: (json['ebitda'] as List<dynamic>)
          .map((e) => ChartDataDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      revenue: (json['revenue'] as List<dynamic>)
          .map((e) => ChartDataDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FinancialsDtoToJson(_FinancialsDto instance) =>
    <String, dynamic>{'ebitda': instance.ebitda, 'revenue': instance.revenue};

_ChartDataDto _$ChartDataDtoFromJson(Map<String, dynamic> json) =>
    _ChartDataDto(
      month: json['month'] as String,
      value: (json['value'] as num).toInt(),
    );

Map<String, dynamic> _$ChartDataDtoToJson(_ChartDataDto instance) =>
    <String, dynamic>{'month': instance.month, 'value': instance.value};

_IssuerDetailDto _$IssuerDetailDtoFromJson(Map<String, dynamic> json) =>
    _IssuerDetailDto(
      issuerName: json['issuer_name'] as String,
      typeOfIssuer: json['type_of_issuer'] as String,
      sector: json['sector'] as String,
      industry: json['industry'] as String,
      issuerNature: json['issuer_nature'] as String,
      cin: json['cin'] as String,
      leadManager: json['lead_manager'] as String,
      registrar: json['registrar'] as String,
      debentureTrustee: json['debenture_trustee'] as String,
    );

Map<String, dynamic> _$IssuerDetailDtoToJson(_IssuerDetailDto instance) =>
    <String, dynamic>{
      'issuer_name': instance.issuerName,
      'type_of_issuer': instance.typeOfIssuer,
      'sector': instance.sector,
      'industry': instance.industry,
      'issuer_nature': instance.issuerNature,
      'cin': instance.cin,
      'lead_manager': instance.leadManager,
      'registrar': instance.registrar,
      'debenture_trustee': instance.debentureTrustee,
    };
