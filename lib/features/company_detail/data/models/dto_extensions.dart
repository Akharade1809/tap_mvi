import '../../domain/enitites/company_detail_entity.dart';
import 'company_detail_dto.dart';

extension CompanyDetailDtoX on CompanyDetailDto {
  CompanyDetailEntity toEntity() {
    return CompanyDetailEntity(
      logo: logo,
      companyName: companyName,
      description: description,
      isin: isin,
      status: status,
      pros: prosAndCons.pros,
      cons: prosAndCons.cons,
      ebitda: financials.ebitda.map((e) => e.toEntity()).toList(),
      revenue: financials.revenue.map((e) => e.toEntity()).toList(),
      issuerDetails: issuerDetails.toEntity(),
    );
  }
}

extension ChartDataDtoX on ChartDataDto {
  ChartData toEntity() => ChartData(month: month, value: value);
}

extension IssuerDetailDtoX on IssuerDetailDto {
  IssuerDetail toEntity() => IssuerDetail(
    issuerName: issuerName,
    typeOfIssuer: typeOfIssuer,
    sector: sector,
    industry: industry,
    issuerNature: issuerNature,
    cin: cin,
    leadManager: leadManager,
    registrar: registrar,
    debentureTrustee: debentureTrustee,
  );
}
