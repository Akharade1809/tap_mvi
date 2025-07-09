import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/enitites/company_detail_entity.dart';

part 'company_detail_state.freezed.dart';

@freezed
class CompanyDetailState with _$CompanyDetailState {
  const factory CompanyDetailState.initial() = _Initial;
  const factory CompanyDetailState.loading() = _Loading;
  const factory CompanyDetailState.loaded(CompanyDetailEntity data) = _Loaded;
  const factory CompanyDetailState.error(String message) = _Error;
}
