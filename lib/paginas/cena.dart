import 'package:flutter/material.dart';

class Cena extends StatefulWidget {
  const Cena({super.key});

  @override
  State<Cena> createState() => _CenaState();
}

class _CenaState extends State<Cena> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("Recetas"), backgroundColor: Colors.green),
      body: SingleChildScrollView(),
    );
  }
}
