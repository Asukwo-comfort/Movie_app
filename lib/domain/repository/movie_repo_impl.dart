import 'package:dartz/dartz.dart';
import 'package:movie_app/datasources/movie_remote_datasource.dart';
import 'package:movie_app/entities/movie_entities.dart';
import 'package:movie_app/model/movie_model.dart';
import 'app_error.dart';
import 'movie_repo.dart';


class MovieRepositoryImpl extends MovieRepository {
  final MovieRemoteDatasource remoteDatasource;

  MovieRepositoryImpl(this.remoteDatasource);

  @override
  Future<Either<AppError, List<MovieModel>>> getTrending() async{
    try {
      final movies = await remoteDatasource.getTrending();
      return Right (movies);
    } on Exception {
      return Left(AppError('Something went wrong'));
    }
  }

  @override
  Future<Either<AppError, List<MovieEntity>>>getPopular() async {
    try {
      final movies = await remoteDatasource.getPopular();
      return Right (movies);
    } on Exception {
      return Left(AppError('Something went wrong'));
    }
  }

  @override
  Future<Either<AppError, List<MovieEntity>>> getComingSoon() async {
    try {
      final movies = await remoteDatasource. getComingSoon();
      return Right (movies);
    } on Exception {
      return Left(AppError('Something went wrong'));
    }
  }

  @override
  Future<Either<AppError, List<MovieEntity>>>  getPlayingNow()async {
    try {
      final movies = await remoteDatasource. getPlayingNow();
      return Right (movies);
    } on Exception {
      return Left(AppError('Something went wrong'));
    }
  }

}