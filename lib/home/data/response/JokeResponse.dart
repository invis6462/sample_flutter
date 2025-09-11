import 'package:json_annotation/json_annotation.dart';
part 'JokeResponse.g.dart';

@JsonSerializable()
class Joke {
  final String type;
  final String setup;
  final String punchline;
  final int id;

  Joke({
    required this.type,
    required this.setup,
    required this.punchline,
    required this.id,
  });

  factory Joke.fromJson(Map<String, dynamic> json) => _$JokeFromJson(json);
}