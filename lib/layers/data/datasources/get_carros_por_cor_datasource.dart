import 'package:arquitetura_padrao/layers/data/dtos/carro_dto.dart';
import 'package:dartz/dartz.dart';

abstract class GetCarrosPorCorDataSource {
  Either<Exception, CarroDto> call(String cor);
}