import 'package:injectable/injectable.dart';
import 'package:tap_mvi/features/company_detail/domain/enitites/company_detail_entity.dart';
import 'package:tap_mvi/features/company_detail/domain/repositories/company_detail_repository.dart';

@injectable
class GetCompanyDetailUseCase {
  final CompanyDetailRepository companyDetailRepository;

  GetCompanyDetailUseCase(this.companyDetailRepository);

  Future<CompanyDetailEntity> call(String isin) {
    return companyDetailRepository.getCompanyDetail(isin);
  }
}