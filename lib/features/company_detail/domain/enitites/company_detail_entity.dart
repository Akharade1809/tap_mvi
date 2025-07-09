import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_detail_entity.freezed.dart';

@freezed
class CompanyDetailEntity with _$CompanyDetailEntity {
  const factory CompanyDetailEntity({
    required String logo,
    required String companyName,
    required String description,
    required String isin,
    required String status,
    required List<String> pros,
    required List<String> cons,
    required List<ChartData> ebitda,
    required List<ChartData> revenue,
    required IssuerDetail issuerDetails,
  }) = _CompanyDetailEntity;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}


@freezed
class ChartData with _$ChartData {
  const factory ChartData({
    required String month,
    required int value
  }) = _ChartData;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}


@freezed
class IssuerDetail with _$IssuerDetail {
  const factory IssuerDetail({
    required String issuerName,
    required String typeOfIssuer,
    required String sector,
    required String industry,
    required String issuerNature,
    required String cin,
    required String leadManager,
    required String registrar,
    required String debentureTrustee,
  }) = _IssuerDetail;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}