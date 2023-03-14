import 'package:flutter/material.dart';
import 'package:music_app/Styles/Colors/app_colors.dart';

import 'Views/detail_music.dart';
import 'Views/form_screen.dart';
import 'Views/login_screen.dart';
import 'Views/pagedot.dart';
import 'Views/signup.dart';
import 'Views/songs_screen.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: textColor,
              )),
      home: HiPage(),
    );
  }
}
