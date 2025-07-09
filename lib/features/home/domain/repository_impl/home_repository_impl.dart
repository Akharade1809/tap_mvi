import 'package:injectable/injectable.dart';
import 'package:tap_mvi/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:tap_mvi/features/home/domain/enitites/home_entity.dart';
import 'package:tap_mvi/features/home/domain/repository/home_repository.dart';

@injectable
class HomeRepositoryImpl implements HomeRepository{

  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepositoryImpl(this.homeRemoteDataSource);

  @override
  Future<List<HomeEntity>> getHomeData() async {
    final dtos = await homeRemoteDataSource.fetchHomeData();
    return dtos.map((dto) => dto.toEntity()).toList();
  }

}