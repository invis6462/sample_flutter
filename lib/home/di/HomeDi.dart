import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../presentaiton/HomeIntent.dart';
import '../presentaiton/HomeState.dart';

final homeIntentProvider = NotifierProvider<HomeIntent, HomeState>(HomeIntent.new);