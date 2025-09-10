import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample_app/main/ui/Application.dart';

void main() {
  runApp(const ProviderScope(child: Application()));
}
