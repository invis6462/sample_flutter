import 'HomeState.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeIntent extends Notifier<HomeState> {
  @override
  HomeState build() {
    return const HomeState();
  }

  void increment() {
    state = state.copyWith(counter: state.counter + 1);
    print(state.counter);
  }
}
