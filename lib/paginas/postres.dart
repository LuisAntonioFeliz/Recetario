import 'package:flutter/material.dart';

class Postres extends StatefulWidget {
  const Postres({super.key});

  @override
  State<Postres> createState() => _PostresState();
}

class _PostresState extends State<Postres> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("Recetas"), backgroundColor: Colors.green),
      body: SingleChildScrollView(),
    );
  }
}
