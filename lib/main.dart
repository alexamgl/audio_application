import 'dart:developer';

import 'package:audio_application/screens/activePage.dart';
import 'package:audio_application/screens/ambientPage.dart';
import 'package:flutter/material.dart';
import 'package:wear/wear.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        primaryColor: Colors.blue, visualDensity: VisualDensity.compact),
    home: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WatchShape(builder: (context, shape, child) {
      return AmbientMode(
        builder: (context, mode, child) {
          return mode == WearMode.active
              ? const ActivePage()
              : const AmbientPage();
        },
      );
    });
  }
}
