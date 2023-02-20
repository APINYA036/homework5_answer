import 'package:flutter/material.dart';
import 'package:taejai/pages/project/project_list_page.dart';
import 'package:taejai/styles/palette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Palette.kToDark,
        //brightness: Brightness.dark,
      ),
      /* darkTheme: ThemeData(
        brightness: Brightness.dark,
        */ /* dark theme settings */ /*
      ),*/
      //themeMode: ThemeMode.dark,
      home: const ProjectListPage(),
    );
  }
}
