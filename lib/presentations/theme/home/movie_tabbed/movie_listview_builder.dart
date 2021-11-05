import 'package:flutter/cupertino.dart';
import 'package:movie_app/entities/movie_entities.dart';
import 'package:movie_app/common/extensions/size_extension.dart';

import 'movie_tabbed_card_widget.dart';

class MovieListViewBuilder extends StatelessWidget {
  //1
  final List<MovieEntity> movies;

  const MovieListViewBuilder({Key key, this.movies})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: movies.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 14.w,
          );
        },
        itemBuilder: (context, index) {
          final MovieEntity movie = movies[index];
          return MovieTabCardWidget(
            movieId: movie.id,
            title: movie.title,
            posterPath: movie.posterPath,
          );
        },
      ),
    );
  }
}
