import '../../navigation/RouteEnum.dart';

class HomeState {
  final String joke;
  final RouteEnum? navigateTo;

  const HomeState({this.joke = "", this.navigateTo});

  HomeState copyWith({String? joke, RouteEnum? navigateTo}) {
    return HomeState(
      joke: joke ?? this.joke,
      navigateTo: navigateTo,
    );
  }
}
