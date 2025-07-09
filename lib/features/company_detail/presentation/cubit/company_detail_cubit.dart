import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecases/get_company_detail_usecase.dart';
import 'company_detail_state.dart';

@injectable
class CompanyDetailCubit extends Cubit<CompanyDetailState> {
  final GetCompanyDetailUseCase _getCompanyDetailUseCase;

  CompanyDetailCubit(this._getCompanyDetailUseCase) : super(const CompanyDetailState.initial());

  Future<void> fetchDetail(String isin) async {
    emit(const CompanyDetailState.loading());
    try {
      final data = await _getCompanyDetailUseCase(isin);
      emit(CompanyDetailState.loaded(data));
    } catch (e) {
      emit(CompanyDetailState.error(e.toString()));
    }
  }
}
