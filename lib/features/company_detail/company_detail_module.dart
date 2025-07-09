library company_detail;

import 'package:injectable/injectable.dart';
import 'package:tap_mvi/features/company_detail/data/data_sources/company_detail_remote_datasource.dart';
import 'package:tap_mvi/features/company_detail/domain/repositories/company_detail_repository.dart';
import 'package:tap_mvi/features/company_detail/domain/repositories_impl/companu_detail_repositroy_impl.dart';

@module
abstract class CompanyDetailModule {
  @lazySingleton
  CompanyDetailRemoteDataSource provideRemote(CompanyDetailRemoteDataSourceImpl impl) => impl;


  @lazySingleton
  CompanyDetailRepository provideRepo(CompanyDetailRepositoryImpl impl) => impl;
}