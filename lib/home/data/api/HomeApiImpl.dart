
import 'package:dio/dio.dart';
import 'package:sample_app/home/data/response/JokeResponse.dart';

import 'HomeApi.dart';

class HomeApiImpl implements HomeApi {
  final dio = Dio();

  HomeApiImpl();

  @override
  Future<Joke> getRandomJoke()  async  =>
      Joke.fromJson(
          (
              await dio.get('https://official-joke-api.appspot.com/random_joke')
          ).data
      );
}