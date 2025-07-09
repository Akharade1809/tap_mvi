import 'package:tap_mvi/features/home/domain/enitites/home_entity.dart';

abstract class HomeRepository {
  Future<List<HomeEntity>> getHomeData();
}