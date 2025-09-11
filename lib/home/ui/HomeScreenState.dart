import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../di/MainDi.dart';
import '../../navigation/RouteEnum.dart';
import 'HomeScreen.dart';

class HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homeIntentProvider);
    final intent = ref.read(homeIntentProvider.notifier);

    if(state.navigateTo != null) navigate(state.navigateTo!);

    return Scaffold(
      appBar: AppBar(title: Text(HomeScreen.title)),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                state.joke,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              TextButton(
                onPressed: intent.navigateToNewScreen,
                child: Text("Next"),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: intent.pressButton,
        child: const Icon(Icons.add),
      ),
    );
  }

  void navigate(RouteEnum route) {
    Navigator.pushNamed(context, route.path);
  }
}
