import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/enitites/home_entity.dart';


part 'home_dto.freezed.dart';
part 'home_dto.g.dart';

@freezed
class HomeDto with _$HomeDto {
  const factory HomeDto({
    required String logo,
    required String isin,
    required String rating,
    @JsonKey(name: 'company_name') required String companyName,
    required List<String> tags
  }) = _HomeDto;

  factory HomeDto.fromJson(Map<String, dynamic> json) => _$HomeDtoFromJson(json);

  const HomeDto._(); // required for custom methods like `toEntity`

  HomeEntity toEntity() => HomeEntity(
    logo: logo,
    isin: isin,
    rating: rating,
    companyName: companyName,
    tags: tags,
  );

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
