class MovieEntity {
  final String posterPath;
  final int id;
  final String backdropPath;
  final String title;
  final num voteAverage;
  final String overView;
  final String releaseDate;

  const MovieEntity(
      {this.posterPath,
      this.id,
      this.backdropPath,
      this.title,
      this.voteAverage,
      this.overView,
      this.releaseDate})
      : assert(id != null //movie id must not be null
            );

  @override
  List<Object> get props => [id, title];

  bool get stringify => true;
}
