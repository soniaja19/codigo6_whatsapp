import 'package:codigo6_whatsapp/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Manrope",
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff075E56),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xff10CE5F),
        ),
      ),
      home: const HomePage(),
    );
  }
}
