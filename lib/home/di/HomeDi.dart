import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample_app/home/data/api/HomeApi.dart';
import 'package:sample_app/home/data/api/HomeApiImpl.dart';

import '../presentaiton/HomeIntent.dart';
import '../presentaiton/HomeState.dart';

final homeIntentProvider = NotifierProvider<HomeIntent, HomeState>(HomeIntent.new);
final homeApiProvider = Provider<HomeApi>((ref) => HomeApiImpl());