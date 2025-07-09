import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../models/home_dto.dart';

abstract class HomeRemoteDataSource {
  Future<List<HomeDto>> fetchHomeData();
}

@injectable
class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final Dio dio;

  HomeRemoteDataSourceImpl(this.dio);

  @override
  Future<List<HomeDto>> fetchHomeData() async {
    final response = await dio.get('https://eol122duf9sy4de.m.pipedream.net/');
    final list = (response.data['data'] as List);
    return list.map((e) => HomeDto.fromJson(e)).toList();
  }
}
