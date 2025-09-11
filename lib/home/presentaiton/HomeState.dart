class HomeState{

  final String joke;

  const HomeState({this.joke = ""});

  HomeState copyWith({String? joke}) {
    return HomeState(joke: joke ?? this.joke);
  }
}