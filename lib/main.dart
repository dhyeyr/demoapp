import 'package:demoapp/extra.dart';
import 'package:demoapp/home.dart';
import 'package:flutter/material.dart';

import 'imagev.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ImageListScreen(),
    );
  }
}
