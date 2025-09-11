import '../response/JokeResponse.dart';

abstract class HomeApi{
  Future<Joke> getRandomJoke();
}