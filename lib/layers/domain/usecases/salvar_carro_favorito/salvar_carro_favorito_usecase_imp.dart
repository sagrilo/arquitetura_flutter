import 'package:arquitetura_padrao/layers/domain/entities/carro_entity.dart';
import 'package:arquitetura_padrao/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:arquitetura_padrao/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:dartz/dartz.dart';

class SalvarCarroFavoritoUseCaseImp implements SalvarCarroFavoritoUseCase {

  final SalvarCarroFavoritoRepository _salvarCarroFavoritoRepository;
  SalvarCarroFavoritoUseCaseImp(this._salvarCarroFavoritoRepository);

  @override
  Future<Either<Exception, bool>> call(CarroEntity carroEntity) async {
    carroEntity.setLogica();
    return await _salvarCarroFavoritoRepository.call(carroEntity);
  }

}