import 'package:flutter/material.dart';
import 'package:alindor_brainai/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:alindor_brainai/src/di_module.dart' as di;
import 'package:alindor_brainai/src/app.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env"); 
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform
);
  await di.initDI();
  runApp(const App());
}

