import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'NewScreenState.dart';

class NewScreen extends ConsumerStatefulWidget  {
  const NewScreen({super.key});

  static const title = "Flutter Demo: NewScreen";

  @override
  ConsumerState<NewScreen> createState() => NewScreenState();
}
