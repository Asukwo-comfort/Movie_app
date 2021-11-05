import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/repository/app_error.dart';
import 'package:movie_app/domain/repository/movie_repo.dart';
import 'package:movie_app/domain/repository/no_params.dart';
import 'package:movie_app/domain/repository/usecases/usecase.dart';
import 'package:movie_app/entities/movie_entities.dart';

class GetTrending extends UseCase<List<MovieEntity>, NoParams>{
  final MovieRepository repository;

  GetTrending(this.repository);

  @override
  Future<Either<AppError, List<MovieEntity>>> call(NoParams noParams) async {
    return await repository.getTrending();
  }
}