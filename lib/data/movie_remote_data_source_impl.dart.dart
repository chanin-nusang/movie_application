import 'dart:convert';

import 'package:http/http.dart';
import 'package:movie_application/api/api_client.dart';
import 'package:movie_application/models/movie_model.dart';
import 'package:movie_application/models/movies_result_model.dart';

abstract class MovieRemoteDataSource {
  Future<List<MovieModel>> getTrending();
  Future<List<MovieModel>> getPopular();
}

class MovieRemoteDataSourceImpl extends MovieRemoteDataSource {
  final ApiClient _client;

  MovieRemoteDataSourceImpl(this._client);

  // get trending movies
  @override
  Future<List<MovieModel>> getTrending() async {
    final response = await _client.get('trending/movie/day');
    return MoviesResultModel.fromJson(response).movies;
  }

  // get popular movies
  @override
  Future<List<MovieModel>> getPopular() async {
    final response = await _client.get('movie/popular');
    return MoviesResultModel.fromJson(response).movies;
  }
}
