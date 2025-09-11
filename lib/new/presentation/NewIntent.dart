import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'NewState.dart';

class NewIntent extends Notifier<NewState> {
  @override
  NewState build() {
    return const NewState();
  }

  void onBack() {
    state = state.copyWith(isBackNavigation: true);
  }
}
