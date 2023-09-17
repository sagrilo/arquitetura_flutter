import 'package:arquitetura_padrao/layers/domain/entities/carro_entity.dart';

abstract class SalvarCarroFavoritoRepository {
  Future<bool> call(CarroEntity carroEntity);
}