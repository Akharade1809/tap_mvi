library home;

import 'package:injectable/injectable.dart';
import 'package:tap_mvi/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:tap_mvi/features/home/domain/repository/home_repository.dart';
import 'package:tap_mvi/features/home/domain/repository_impl/home_repository_impl.dart';


@module
abstract class HomeModule {
  @lazySingleton
  HomeRemoteDataSource provideRemote(HomeRemoteDataSourceImpl impl) => impl;

  @lazySingleton
  HomeRepository provideRepo(HomeRepositoryImpl impl) => impl;
}