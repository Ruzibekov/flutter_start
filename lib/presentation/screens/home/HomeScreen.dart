import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TITLE TEXT",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
      body: Center(
          child: Text(
              "BODY TEXT",
              style: TextStyle(color: Colors.black, fontSize: 16)
          )
      ),
    );
  }
}