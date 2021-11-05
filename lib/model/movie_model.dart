import 'package:movie_app/entities/movie_entities.dart';

class MovieModel extends MovieEntity {
  final String title;
  final List<int> genreIds;
  final int id;
  final String overview;
  final String originalTitle;
  final String posterPath;
  final double voteAverage;
  final bool adult;
  final String backdropPath;
  final bool video;
  final int voteCount;
  final String releaseDate;
  final String originalLanguage;
  final double popularity;
  final String mediaType;

  MovieModel(
      {this.title,
        this.genreIds,
        this.id,
        this.overview,
        this.originalTitle,
        this.posterPath,
        this.voteAverage,
        this.adult,
        this.backdropPath,
        this.video,
        this.voteCount,
        this.releaseDate,
        this.originalLanguage,
        this.popularity,
        this.mediaType}): super(
    id: id,
    title: title,
    posterPath: posterPath,
    voteAverage: voteAverage,
    overView: overview,
    backdropPath: backdropPath,
    releaseDate: releaseDate
  );

 factory MovieModel.fromJson(Map<String, dynamic> json) {
   return MovieModel(
    title : json['title'],
    genreIds : json['genre_ids'].cast<int>(),
    id : json['id'],
    overview : json['overview'],
    originalTitle : json['original_title'],
    posterPath : json['poster_path'],
    voteAverage : json['vote_average']?.toDouble() ?? 0.0,
    adult : json['adult'],
    backdropPath : json['backdrop_path'],
    video : json['video'],
    voteCount : json['vote_count'],
    releaseDate : json['release_date'],
    originalLanguage : json['original_language'],
    popularity : json['popularity']?.toDouble() ?? 0.0,
    mediaType : json['media_type'],);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['genre_ids'] = this.genreIds;
    data['id'] = this.id;
    data['overview'] = this.overview;
    data['original_title'] = this.originalTitle;
    data['poster_path'] = this.posterPath;
    data['vote_average'] = this.voteAverage;
    data['adult'] = this.adult;
    data['backdrop_path'] = this.backdropPath;
    data['video'] = this.video;
    data['vote_count'] = this.voteCount;
    data['release_date'] = this.releaseDate;
    data['original_language'] = this.originalLanguage;
    data['popularity'] = this.popularity;
    data['media_type'] = this.mediaType;
    return data;
  }
}


