import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;
import 'home.dart';
import 'navbar.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Material App
    return MaterialApp(
        // Scaffold Widget
        home: Scaffold(
      appBar: MyAppBar(),
      body: const Home(),
    ));
  }
}
