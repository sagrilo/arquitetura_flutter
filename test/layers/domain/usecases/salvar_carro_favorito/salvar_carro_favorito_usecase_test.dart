import 'package:arquitetura_padrao/layers/domain/entities/carro_entity.dart';
import 'package:arquitetura_padrao/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:arquitetura_padrao/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:arquitetura_padrao/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

class SalvarCarroFavoritoRepositoryImpl implements SalvarCarroFavoritoRepository {
  @override
  Future<bool> call(CarroEntity carroEntity) async {
   return carroEntity.valor > 0;
  }

}

main() {

  test('Espero que salve o carro com sucesso', () async {

    SalvarCarroFavoritoUseCase useCase = SalvarCarroFavoritoUseCaseImp(
      SalvarCarroFavoritoRepositoryImpl(),
    );

    var carro = CarroEntity(placa: 'placa', qtdPortas: 2, valor: 1);
    var result = await useCase(carro);
    expect(result, true);
  });

  test('Espero que não salve o carro quando o valor for igual ou menor que 0', () async {

    SalvarCarroFavoritoUseCase useCase = SalvarCarroFavoritoUseCaseImp(
      SalvarCarroFavoritoRepositoryImpl(),
    );

    var carro = CarroEntity(placa: 'placa', qtdPortas: 2, valor: 0);
    var result = await useCase(carro);
    expect(result, false);
  });
}