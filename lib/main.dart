import 'package:flutter/material.dart';
import 'package:flutter_application_2/presenter/views/app_root.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: AppRoot()));
}
