// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:http/http.dart' as _i519;
import 'package:injectable/injectable.dart' as _i526;
import 'package:tap_mvi/core/di/network_module.dart' as _i246;
import 'package:tap_mvi/features/company_detail/company_detail_module.dart'
    as _i977;
import 'package:tap_mvi/features/company_detail/data/data_sources/company_detail_remote_datasource.dart'
    as _i769;
import 'package:tap_mvi/features/company_detail/domain/repositories/company_detail_repository.dart'
    as _i452;
import 'package:tap_mvi/features/company_detail/domain/repositories_impl/companu_detail_repositroy_impl.dart'
    as _i64;
import 'package:tap_mvi/features/company_detail/domain/usecases/get_company_detail_usecase.dart'
    as _i987;
import 'package:tap_mvi/features/company_detail/presentation/cubit/company_detail_cubit.dart'
    as _i410;
import 'package:tap_mvi/features/home/data/data_sources/home_remote_data_source.dart'
    as _i356;
import 'package:tap_mvi/features/home/domain/repository/home_repository.dart'
    as _i737;
import 'package:tap_mvi/features/home/domain/repository_impl/home_repository_impl.dart'
    as _i27;
import 'package:tap_mvi/features/home/domain/usecases/get_home_data_usecase.dart'
    as _i582;
import 'package:tap_mvi/features/home/home_module.dart' as _i982;
import 'package:tap_mvi/features/home/presentation/cubit/home_cubit.dart'
    as _i1036;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final networkModule = _$NetworkModule();
    final homeModule = _$HomeModule();
    final companyDetailModule = _$CompanyDetailModule();
    gh.lazySingleton<_i519.Client>(() => networkModule.httpClient);
    gh.factory<_i769.CompanyDetailRemoteDataSourceImpl>(
      () => _i769.CompanyDetailRemoteDataSourceImpl(gh<_i519.Client>()),
    );
    gh.factory<_i356.HomeRemoteDataSourceImpl>(
      () => _i356.HomeRemoteDataSourceImpl(gh<_i519.Client>()),
    );
    gh.lazySingleton<_i356.HomeRemoteDataSource>(
      () => homeModule.provideRemote(gh<_i356.HomeRemoteDataSourceImpl>()),
    );
    gh.lazySingleton<_i769.CompanyDetailRemoteDataSource>(
      () => companyDetailModule.provideRemote(
        gh<_i769.CompanyDetailRemoteDataSourceImpl>(),
      ),
    );
    gh.factory<_i27.HomeRepositoryImpl>(
      () => _i27.HomeRepositoryImpl(gh<_i356.HomeRemoteDataSource>()),
    );
    gh.factory<_i64.CompanyDetailRepositoryImpl>(
      () => _i64.CompanyDetailRepositoryImpl(
        gh<_i769.CompanyDetailRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i737.HomeRepository>(
      () => homeModule.provideRepo(gh<_i27.HomeRepositoryImpl>()),
    );
    gh.lazySingleton<_i452.CompanyDetailRepository>(
      () => companyDetailModule.provideRepo(
        gh<_i64.CompanyDetailRepositoryImpl>(),
      ),
    );
    gh.lazySingleton<_i582.GetHomeDataUseCase>(
      () => _i582.GetHomeDataUseCase(gh<_i737.HomeRepository>()),
    );
    gh.factory<_i987.GetCompanyDetailUseCase>(
      () => _i987.GetCompanyDetailUseCase(gh<_i452.CompanyDetailRepository>()),
    );
    gh.factory<_i1036.HomeCubit>(
      () => _i1036.HomeCubit(gh<_i582.GetHomeDataUseCase>()),
    );
    gh.factory<_i410.CompanyDetailCubit>(
      () => _i410.CompanyDetailCubit(gh<_i987.GetCompanyDetailUseCase>()),
    );
    return this;
  }
}

class _$NetworkModule extends _i246.NetworkModule {}

class _$HomeModule extends _i982.HomeModule {}

class _$CompanyDetailModule extends _i977.CompanyDetailModule {}
