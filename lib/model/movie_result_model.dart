import 'movie_model.dart';

class MovieResultModel {
  List<MovieModel> movies;


  MovieResultModel(
      {this.movies,});

  MovieResultModel.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      movies = new List<MovieModel>();
      json['results'].forEach((v) {
        movies.add(MovieModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.movies != null) {
      data['results'] = this.movies.map((v) => v.toJson()).toList();
    }
    return data;
  }
}



//
//
//
//
//
//
//
// class MovieResponse {
//   int page;
//   List<Results> results;
//   int totalPages;
//   int totalResults;
//
//   MovieResponse({this.page, this.results, this.totalPages, this.totalResults});
//
//   MovieResponse.fromJson(Map<String, dynamic> json) {
//     page = json['page'];
//     if (json['results'] != null) {
//       results = new List<Results>();
//       json['results'].forEach((v) {
//         results.add(new Results.fromJson(v));
//       });
//     }
//     totalPages = json['total_pages'];
//     totalResults = json['total_results'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['page'] = this.page;
//     if (this.results != null) {
//       data['results'] = this.results.map((v) => v.toJson()).toList();
//     }
//     data['total_pages'] = this.totalPages;
//     data['total_results'] = this.totalResults;
//     return data;
//   }
// }
//
// class Results {
//   String title;
//   List<int> genreIds;
//   int id;
//   String overview;
//   String originalTitle;
//   String posterPath;
//   double voteAverage;
//   bool adult;
//   String backdropPath;
//   bool video;
//   int voteCount;
//   String releaseDate;
//   String originalLanguage;
//   double popularity;
//   String mediaType;
//
//   Results(
//       {this.title,
//         this.genreIds,
//         this.id,
//         this.overview,
//         this.originalTitle,
//         this.posterPath,
//         this.voteAverage,
//         this.adult,
//         this.backdropPath,
//         this.video,
//         this.voteCount,
//         this.releaseDate,
//         this.originalLanguage,
//         this.popularity,
//         this.mediaType});
//
//   Results.fromJson(Map<String, dynamic> json) {
//     title = json['title'];
//     genreIds = json['genre_ids'].cast<int>();
//     id = json['id'];
//     overview = json['overview'];
//     originalTitle = json['original_title'];
//     posterPath = json['poster_path'];
//     voteAverage = json['vote_average'];
//     adult = json['adult'];
//     backdropPath = json['backdrop_path'];
//     video = json['video'];
//     voteCount = json['vote_count'];
//     releaseDate = json['release_date'];
//     originalLanguage = json['original_language'];
//     popularity = json['popularity'];
//     mediaType = json['media_type'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['title'] = this.title;
//     data['genre_ids'] = this.genreIds;
//     data['id'] = this.id;
//     data['overview'] = this.overview;
//     data['original_title'] = this.originalTitle;
//     data['poster_path'] = this.posterPath;
//     data['vote_average'] = this.voteAverage;
//     data['adult'] = this.adult;
//     data['backdrop_path'] = this.backdropPath;
//     data['video'] = this.video;
//     data['vote_count'] = this.voteCount;
//     data['release_date'] = this.releaseDate;
//     data['original_language'] = this.originalLanguage;
//     data['popularity'] = this.popularity;
//     data['media_type'] = this.mediaType;
//     return data;
//   }
// }