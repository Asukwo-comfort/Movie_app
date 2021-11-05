import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/repository/app_error.dart';
import 'package:movie_app/domain/repository/movie_repo.dart';
import 'package:movie_app/domain/repository/usecases/usecase.dart';
import 'package:movie_app/entities/movie_entities.dart';

import '../no_params.dart';

class GetComingSoon extends UseCase<List<MovieEntity>, NoParams>{
  final MovieRepository repository;

  GetComingSoon(this.repository);

  @override
  Future<Either<AppError, List<MovieEntity>>> call(NoParams noParams) async {
    return await repository.getComingSoon();
  }
}