import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/usecases/get_home_data_usecase.dart';
import 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final GetHomeDataUseCase getHomeDataUseCase;

  HomeCubit(this.getHomeDataUseCase) : super(const HomeState.initial());

  Future<void> fetchData() async {
    emit(const HomeState.loading());
    try {
      final result = await getHomeDataUseCase();
      emit(HomeState.loaded(result));
    } catch (e) {
      emit(HomeState.error(e.toString()));
    }
  }
}
