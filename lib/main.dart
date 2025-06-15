import 'package:flutter/material.dart';
import 'package:flutter_start/presentation/screens/new_password/NewPasswordScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My second app",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: NewPasswordScreen(),
    );
  }
}
