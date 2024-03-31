import 'package:alindor_brainai/src/app.dart';
import 'package:flutter/material.dart';
import 'package:alindor_brainai/src/di_module.dart' as di;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await di.initDI();
  runApp(const App());
}

