import 'package:arquitetura_padrao/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:arquitetura_padrao/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:arquitetura_padrao/layers/data/repositories/get_carro_por_cor_repository_imp.dart';
import 'package:arquitetura_padrao/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:arquitetura_padrao/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:arquitetura_padrao/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:arquitetura_padrao/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:arquitetura_padrao/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:arquitetura_padrao/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:arquitetura_padrao/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:arquitetura_padrao/layers/presentation/controllers/carro_controller.dart';
import 'package:get_it/get_it.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;

    //datasources
    getIt.registerLazySingleton<GetCarrosPorCorDataSource>(
            () => GetCarrosPorCorLocalDataSourceImp());

    //repositories
    getIt.registerLazySingleton<GetCarrosPorCorRepository>(
            () => GetCarrosPorCorRepositoryImp(getIt()));
    getIt.registerLazySingleton<SalvarCarroFavoritoRepository>(
            () => SalvarCarroFavoritoRepositoryImp());

    //usecases
    getIt.registerLazySingleton<GetCarrosPorCorUseCase>(
            () => GetCarrosPorCorUseCaseImp(getIt()));
    getIt.registerLazySingleton<SalvarCarroFavoritoUseCase>(
            () => SalvarCarroFavoritoUseCaseImp(getIt()));

    //controllers
    getIt.registerFactory<CarroController>(() => CarroController(getIt(), getIt()));
  }
}
