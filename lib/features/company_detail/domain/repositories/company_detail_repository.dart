import 'package:tap_mvi/features/company_detail/domain/enitites/company_detail_entity.dart';

abstract class CompanyDetailRepository {
  Future<CompanyDetailEntity> getCompanyDetail(String isin);
}