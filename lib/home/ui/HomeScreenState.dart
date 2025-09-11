import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample_app/home/di/HomeDi.dart';

import 'HomeScreen.dart';

class HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homeIntentProvider);
    final intent = ref.read(homeIntentProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: Text(HomeScreen.title)),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '${state.joke}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              TextButton(
                  onPressed: intent.navigate,
                  child: Text(
                    "Next"
                  ),
              )
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
}
