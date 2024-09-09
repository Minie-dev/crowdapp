import 'package:flutter/material.dart';
import 'package:crowdapp/features/authentification/screens/welcome/welcome_screen.dart';

void main()  {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'crowdApp',
      debugShowCheckedModeBanner : false,
      home: Scaffold(
        body: Center(
          child: HomePage(),
        ),
      )
    );
  }
}