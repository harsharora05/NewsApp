import 'package:flutter/material.dart';
import 'package:news_app/news_view.dart';

void main() {
  WidgetsFlutterBinding();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(224, 80, 145, 243),
        primaryColorDark: const Color.fromARGB(223, 37, 100, 193),
        useMaterial3: true,
      ),
      home: const NewsView(),
    );
  }
}
