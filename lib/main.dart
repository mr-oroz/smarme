import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:w_sharme_beauty/bootstrap.dart';

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  return lazyBootstrap(widgetsBinding, Environment.dev);
}
