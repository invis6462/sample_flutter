import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../di/MainDi.dart';
import 'NewScreen.dart';

class NewScreenState extends ConsumerState<NewScreen> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(newScreenIntentProvider);
    final intent = ref.read(newScreenIntentProvider.notifier);

    if(state.isBackNavigation) onBack();

    return Scaffold(
      appBar: AppBar(
        title: Text(NewScreen.title),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: intent.onBack,
            icon: Icon(Icons.navigate_before),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'This new screen',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onBack(){
    Navigator.pop(context);
  }
}
