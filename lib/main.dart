import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:movie_application/data/core/api_client.dart';
import 'package:movie_application/app.dart';
import 'package:movie_application/data/data_sources/movie_remote_data_source_impl.dart';

void main() {
  MovieRemoteDataSource dataSource =
      MovieRemoteDataSourceImpl(ApiClient(Client()));

  dataSource.getTrending();
  dataSource.getPopular();
  runApp(App());
}
