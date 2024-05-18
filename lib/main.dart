import 'package:flutter/material.dart';
import 'package:flutter_animation/animation/simple_animation_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // home: MainPage(),
      // home: MainPage(),
      // home: CarouselPage(),
      home: SimpleAnimationPage(),
      // home: AppbarPage(),
    );
  }
}
