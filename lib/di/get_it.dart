import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:movie_app/core/api_client.dart';
import 'package:movie_app/datasources/movie_remote_datasource.dart';
import 'package:movie_app/domain/repository/movie_repo.dart';
import 'package:movie_app/domain/repository/movie_repo_impl.dart';
import 'package:movie_app/domain/repository/usecases/getPlayingnow.dart';
import 'package:movie_app/domain/repository/usecases/getPopular.dart';
import 'package:movie_app/domain/repository/usecases/getTrending.dart';
import 'package:movie_app/domain/repository/usecases/getcomingsoon.dart';
import 'package:movie_app/presentations/theme/bloc/movie_caurosel/movie_backdrop/movie_backdrop_bloc.dart';
import 'package:movie_app/presentations/theme/bloc/movie_caurosel/movie_caurosel_bloc.dart';
import 'package:movie_app/presentations/theme/bloc/movie_caurosel/movie_tabbed/movie_tabbed_bloc.dart';

final getItInstance = GetIt.I;

Future init() async {
  getItInstance.registerLazySingleton<Client>(() => Client());

  getItInstance
      .registerLazySingleton<ApiClient>(() => ApiClient(getItInstance()));

  getItInstance.registerLazySingleton<MovieRemoteDatasource>(
      () => MovieRemoteDatasourceImpl(getItInstance()));

  getItInstance
      .registerLazySingleton<GetTrending>(() => GetTrending(getItInstance()));

  getItInstance
      .registerLazySingleton<GetPopular>(() => GetPopular(getItInstance()));

  getItInstance.registerLazySingleton<GetPlayingNow>(
      () => GetPlayingNow(getItInstance()));

  getItInstance.registerLazySingleton<GetComingSoon>(
      () => GetComingSoon(getItInstance()));

  getItInstance.registerLazySingleton<MovieRepository>(
      () => MovieRepositoryImpl(getItInstance()));

  getItInstance.registerLazySingleton(() => MovieCarouselBloc(
      getTrending: getItInstance(), movieBackdropBloc: getItInstance()));

  getItInstance.registerLazySingleton(() => MovieBackdropBloc());

  getItInstance.registerFactory(() => MovieTabbedBloc(
      getPopular: GetPopular(getItInstance()),
      getPlayingNow: GetPlayingNow(getItInstance()),
      getComingSoon: GetComingSoon(getItInstance())));
}
