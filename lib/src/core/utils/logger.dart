
import 'package:flutter/foundation.dart';

class Logger {
  static void log({required String message, StackTrace? stackTrace}) {
    if(kDebugMode) {
      print("FLUTTER_APP: $message");
      if(stackTrace != null) {
        print(stackTrace);
      }
    }
  }
}