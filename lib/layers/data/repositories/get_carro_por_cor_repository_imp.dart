import 'package:arquitetura_padrao/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:arquitetura_padrao/layers/domain/entities/carro_entity.dart';
import '../../domain/repositories/get_carros_por_cor_repository.dart';
import '../dtos/carro_dto.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {

  final GetCarrosPorCorDataSource _getCarrosPorCorDataSource;
  GetCarrosPorCorRepositoryImp(this._getCarrosPorCorDataSource);

  @override
  CarroEntity call(String cor) {

    return _getCarrosPorCorDataSource(cor);
  }

}