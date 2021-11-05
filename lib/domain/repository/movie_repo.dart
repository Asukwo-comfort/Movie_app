import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/repository/app_error.dart';
import 'package:movie_app/entities/movie_entities.dart';

abstract class MovieRepository{
  Future<Either<AppError, List<MovieEntity>>>getTrending();
  Future<Either<AppError, List<MovieEntity>>>getPopular();
  Future<Either<AppError, List<MovieEntity>>>getPlayingNow();
  Future<Either<AppError, List<MovieEntity>>>getComingSoon();
}