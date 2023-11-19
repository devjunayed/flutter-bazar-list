import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bazzar List')),
      body: Container(
        child: const Text("This is home scree"),
      )
    );
  }
}