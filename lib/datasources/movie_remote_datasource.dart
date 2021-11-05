import 'dart:convert';
import 'package:movie_app/core/api_client.dart';
import 'package:movie_app/model/movie_model.dart';
import 'package:movie_app/model/movie_result_model.dart';
import 'package:http/http.dart' as http;


abstract class MovieRemoteDatasource{
  Future <List<MovieModel>> getTrending();
  Future <List<MovieModel>> getPopular();
  Future <List<MovieModel>> getComingSoon();
  Future <List<MovieModel>> getPlayingNow();
}
class MovieRemoteDatasourceImpl extends MovieRemoteDatasource{
  final ApiClient _client;

  MovieRemoteDatasourceImpl(this._client);

  @override
  Future<List<MovieModel>> getTrending() async {
    final response = await http.get('https://api.themoviedb.org/3/trending/movie/day?api_key=bac8cbdb40154f80482371d80e5ee48d');
    // print(response.body);
    final movies = MovieResultModel.fromJson(jsonDecode(response.body)).movies;
     print (movies);
    return movies;
  }

  @override
  Future<List<MovieModel>> getPopular() async {
    final response = await http.get('https://api.themoviedb.org/3/movie/popular?api_key=bac8cbdb40154f80482371d80e5ee48d');
    // print(response.body);
    final movies = MovieResultModel.fromJson(jsonDecode(response.body)).movies;
   print (movies);
    return movies;
  }

  @override
  Future<List<MovieModel>> getComingSoon() async {
    final response = await http.get('https://api.themoviedb.org/3/movie/upcoming?api_key=bac8cbdb40154f80482371d80e5ee48d');
    // print(response.body);
    final movies = MovieResultModel.fromJson(jsonDecode(response.body)).movies;
     print (movies);
    return movies;
  }

  @override
  Future<List<MovieModel>> getPlayingNow() async {
    final response = await  http.get('https://api.themoviedb.org/3/movie/now_playing?api_key=bac8cbdb40154f80482371d80e5ee48d');
    // print(response.body);
    final movies = MovieResultModel.fromJson(jsonDecode(response.body)).movies;
    print (movies);
    return movies;
  }

}