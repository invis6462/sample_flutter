import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'HomeScreenState.dart';

class HomeScreen extends ConsumerStatefulWidget  {
  const HomeScreen({super.key});

  static const title = "Flutter Demo";

  @override
  ConsumerState<HomeScreen> createState() => HomeScreenState();
}
