import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:movie_application/api/api_client.dart';
import 'package:movie_application/app.dart';
import 'package:movie_application/data/movie_remote_data_source_impl.dart.dart';

void main() {
  MovieRemoteDataSource dataSource =
      MovieRemoteDataSourceImpl(ApiClient(Client()));

  dataSource.getTrending();
  dataSource.getPopular();
  runApp(App());
}
