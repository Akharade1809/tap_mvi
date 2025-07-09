import 'package:injectable/injectable.dart';
import 'package:tap_mvi/features/home/domain/repository/home_repository.dart';
import '../enitites/home_entity.dart';

@lazySingleton
class GetHomeDataUseCase {
  final HomeRepository homeRepository;

  GetHomeDataUseCase(this.homeRepository);

  Future<List<HomeEntity>> call() => homeRepository.getHomeData();
}