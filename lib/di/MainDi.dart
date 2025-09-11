import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample_app/home/data/api/HomeApi.dart';
import 'package:sample_app/home/data/api/HomeApiImpl.dart';
import 'package:sample_app/new/presentation/NewIntent.dart';
import 'package:sample_app/new/presentation/NewState.dart';

import '../home/presentaiton/HomeIntent.dart';
import '../home/presentaiton/HomeState.dart';

final homeIntentProvider = NotifierProvider<HomeIntent, HomeState>(
  HomeIntent.new,
);
final homeApiProvider = Provider<HomeApi>((ref) => HomeApiImpl());

final newScreenIntentProvider = NotifierProvider<NewIntent, NewState>(
  NewIntent.new,
);
