import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_entity.freezed.dart';

@freezed
class HomeEntity with _$HomeEntity {
  const factory HomeEntity({
    required String logo,
    required String isin,
    required String rating,
    required String companyName,
    required List<String> tags,
  }) = _HomeEntity;


  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}