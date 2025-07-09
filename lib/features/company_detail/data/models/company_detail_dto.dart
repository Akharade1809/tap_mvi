import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/enitites/company_detail_entity.dart';

part 'company_detail_dto.freezed.dart';
part 'company_detail_dto.g.dart';

@freezed
class CompanyDetailDto with _$CompanyDetailDto {
  const factory CompanyDetailDto({
    required String logo,
    @JsonKey(name: 'company_name') required String companyName,
    required String description,
    required String isin,
    required String status,
    @JsonKey(name: 'pros_and_cons') required ProsAndConsDto prosAndCons,
    required FinancialsDto financials,
    @JsonKey(name: 'issuer_details') required IssuerDetailDto issuerDetails,
  }) = _CompanyDetailDto;

  factory CompanyDetailDto.fromJson(Map<String, dynamic> json) =>
      _$CompanyDetailDtoFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

@freezed
class ProsAndConsDto with _$ProsAndConsDto {
  const factory ProsAndConsDto({
    required List<String> pros,
    required List<String> cons,
  }) = _ProsAndConsDto;

  factory ProsAndConsDto.fromJson(Map<String, dynamic> json) =>
      _$ProsAndConsDtoFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

@freezed
class FinancialsDto with _$FinancialsDto {
  const factory FinancialsDto({
    required List<ChartDataDto> ebitda,
    required List<ChartDataDto> revenue,
  }) = _FinancialsDto;

  factory FinancialsDto.fromJson(Map<String, dynamic> json) =>
      _$FinancialsDtoFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

@freezed
class ChartDataDto with _$ChartDataDto {
  const factory ChartDataDto({
    required String month,
    required int value,
  }) = _ChartDataDto;

  factory ChartDataDto.fromJson(Map<String, dynamic> json) =>
      _$ChartDataDtoFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

@freezed
class IssuerDetailDto with _$IssuerDetailDto {
  const factory IssuerDetailDto({
    @JsonKey(name: 'issuer_name') required String issuerName,
    @JsonKey(name: 'type_of_issuer') required String typeOfIssuer,
    required String sector,
    required String industry,
    @JsonKey(name: 'issuer_nature') required String issuerNature,
    required String cin,
    @JsonKey(name: 'lead_manager') required String leadManager,
    required String registrar,
    @JsonKey(name: 'debenture_trustee') required String debentureTrustee,
  }) = _IssuerDetailDto;

  factory IssuerDetailDto.fromJson(Map<String, dynamic> json) =>
      _$IssuerDetailDtoFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
