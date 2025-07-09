part of 'base_view_model.dart';

@freezed
class BaseState with _$BaseState {
  const factory BaseState.initial() = _Initial;
  const factory BaseState.loading() = _Loading;
  const factory BaseState.success() = _Success;
  const factory BaseState.error(String message) = _Error;
}