import 'package:sample_app/home/data/api/HomeApi.dart';

import '../../di/MainDi.dart';
import '../../navigation/RouteEnum.dart';
import 'HomeState.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeIntent extends Notifier<HomeState> {

  late final HomeApi api;

  @override
  HomeState build() {
    api = ref.watch(homeApiProvider);
    return const HomeState();
  }

  void pressButton() async {
    final joke = await getJoke();
    state = state.copyWith(joke: joke);
  }

  Future<String> getJoke()  async {
    final joke = await api.getRandomJoke();
    return "${joke.setup}\n${joke.punchline}";
  }

  void navigateToNewScreen() {
    state = state.copyWith(navigateTo: RouteEnum.newScreen);
  }
}
