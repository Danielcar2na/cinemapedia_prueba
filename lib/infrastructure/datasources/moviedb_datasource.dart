import 'package:cinemapedia/config/constants/environment.dart';
import 'package:cinemapedia/domain/datasources/movies_datasource.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/mappers/movie_mapper.dart';
import 'package:cinemapedia/infrastructure/models/moviedb_response.dart';
import 'package:dio/dio.dart';

class MoviedbDatasource extends MoviesDatasource {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'http://api.themoviedb.org/3',
      queryParameters: {
        'api_key': Environment.themovieDbKey,
        'language': 'es-MX',
      },
    ),
  );
  @override
  Future<List<Movie>> getNowPlay({int page = 1}) async {
    final response = await dio.get('/movies/now_playing');

    final movieDbResponse = MovieDbResponse.fromJson(response.data);

    final List<Movie> movies =
        movieDbResponse.results.where((moviedb) => moviedb.posterPath != 'NO-POSTER') 
            .map((moviedb) => MovieMapper.movieDBToEntity(moviedb))
            .toList();

    return movies;
  }
}
