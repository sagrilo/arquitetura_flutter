import 'package:arquitetura_padrao/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:arquitetura_padrao/layers/data/repositories/get_carro_por_cor_repository_imp.dart';
import 'package:arquitetura_padrao/layers/domain/entities/carro_entity.dart';
import 'package:arquitetura_padrao/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:arquitetura_padrao/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';



main() {

  test('Deve retornar uma instancia de carro quando passado qualquer cor', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
      GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDataSourceImp()));
    var resultado = useCase('azul');
    expect(resultado, isInstanceOf<CarroEntity>());
  });

  test('Deve retornar um carro de 4 portas quando vermelho', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
        GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDataSourceImp()));
    var resultado = useCase('vermelho');
    expect(resultado.qtdPortas, 4);
  });

  test('Deve retornar um carro de 2 portas quando qualquer cor exceto vermelho', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
        GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDataSourceImp()));
    var resultado = useCase('verde');
    expect(resultado.qtdPortas, 2);
  });
}