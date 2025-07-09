import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../models/company_detail_dto.dart';

abstract class CompanyDetailRemoteDataSource {
  Future<CompanyDetailDto> fetchCompanyDetail(String isin);
}


@injectable
class CompanyDetailRemoteDataSourceImpl implements CompanyDetailRemoteDataSource {
  final http.Client client;

  CompanyDetailRemoteDataSourceImpl(this.client);

  @override
  Future<CompanyDetailDto> fetchCompanyDetail(String isin) async {
    final response = await client.get(
      Uri.parse('https://eo61q3zd4heiwke.m.pipedream.net/?isin=$isin'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as Map<String, dynamic>;
      return CompanyDetailDto.fromJson(jsonData);
    } else {
      throw Exception('Failed to load company details');
    }
  }
}
