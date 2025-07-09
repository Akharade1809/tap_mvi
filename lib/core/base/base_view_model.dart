import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_state.dart';
part 'base_view_model.freezed.dart';

abstract class BaseViewModel<State extends BaseState> extends Cubit<State> {
  BaseViewModel(State initialState) : super(initialState);
}