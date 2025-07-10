import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import '../models/home_dto.dart';

abstract class HomeRemoteDataSource {
  Future<List<HomeDto>> fetchHomeData();
}

@injectable
class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final http.Client client;

  HomeRemoteDataSourceImpl(this.client);

  @override
  Future<List<HomeDto>> fetchHomeData() async {
    final response = await client.get(Uri.parse('https://eol122duf9sy4de.m.pipedream.net/'));

    if (response.statusCode == 200) {
      final jsonMap = json.decode(response.body);
      final list = jsonMap['data'] as List;
      return list.map((e) => HomeDto.fromJson(e)).toList();
    } else {
      throw Exception('Failed to fetch data');
    }
  }
}
