import 'package:injectable/injectable.dart';
import 'package:tap_mvi/features/company_detail/data/data_sources/company_detail_remote_datasource.dart';
import 'package:tap_mvi/features/company_detail/data/models/dto_extensions.dart';
import 'package:tap_mvi/features/company_detail/domain/enitites/company_detail_entity.dart';

import '../repositories/company_detail_repository.dart';

@injectable
class CompanyDetailRepositoryImpl implements CompanyDetailRepository {

  final CompanyDetailRemoteDataSource companyDetailRemoteDataSource;

  CompanyDetailRepositoryImpl(this.companyDetailRemoteDataSource);

  @override
  Future<CompanyDetailEntity> getCompanyDetail(String isin) async {
    final dto = await companyDetailRemoteDataSource.fetchCompanyDetail(isin);
    return dto.toEntity();
  }

}