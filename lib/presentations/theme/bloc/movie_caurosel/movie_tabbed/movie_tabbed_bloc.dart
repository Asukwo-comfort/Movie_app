import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_app/domain/repository/app_error.dart';
import 'package:movie_app/domain/repository/no_params.dart';
import 'package:movie_app/domain/repository/usecases/getPlayingnow.dart';
import 'package:movie_app/domain/repository/usecases/getPopular.dart';
import 'package:movie_app/domain/repository/usecases/getcomingsoon.dart';
import 'package:movie_app/entities/movie_entities.dart';

part 'movie_tabbed_event.dart';

part 'movie_tabbed_state.dart';

class MovieTabbedBloc extends Bloc<MovieTabbedEvent, MovieTabbedState> {
  final GetPopular getPopular;
  final GetPlayingNow getPlayingNow;
  final GetComingSoon getComingSoon;

  MovieTabbedBloc({
    this.getPopular,
    this.getPlayingNow,
    this.getComingSoon,
  }) : super(MovieTabbedInitial());

  @override
  Stream<MovieTabbedState> mapEventToState(
    MovieTabbedEvent event,
  ) async* {
    if (event is MovieTabChangedEvent) {
      Either<AppError, List<MovieEntity>> moviesEither;
      switch (event.currentTabIndex) {
        case 0:
          moviesEither = await getPopular(NoParams());
          break;
        case 1:
          moviesEither = await getPlayingNow(NoParams());
          break;
        case 2:
          moviesEither = await getComingSoon(NoParams());
          break;
      }
      yield moviesEither.fold(
        (l) => MovieTabLoadError(currentTabIndex: event.currentTabIndex),
        (movies) {
          return MovieTabChanged(
            currentTabIndex: event.currentTabIndex,
            movies: movies,
          );
        },
      );
    }
  }
}
