import 'package:flutter/material.dart';

import 'home_controller.dart';
// import 'home_page.dart';
import 'list_example.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeController(child: ListExample()),
    );
  }
}