import 'package:arquitetura_padrao/layers/data/dtos/carro_dto.dart';

abstract class GetCarrosPorCorDataSource {
  CarroDto call(String cor);
}