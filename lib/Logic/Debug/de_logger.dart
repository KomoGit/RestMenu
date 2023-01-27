import 'package:flutter/material.dart';

class Logger {
  static void logOut(String message) {
    TimeOfDay time = TimeOfDay.now();
    // ignore: avoid_print
    print("Logger :- $message - $time}");
  }
}
