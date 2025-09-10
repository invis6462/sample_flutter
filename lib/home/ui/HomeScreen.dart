import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'HomeScreenState.dart';

class HomeScreen extends ConsumerStatefulWidget  {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  ConsumerState<HomeScreen> createState() => HomeScreenState();
}
