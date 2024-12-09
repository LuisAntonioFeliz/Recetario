import 'package:flutter/material.dart';

class Almuerzo extends StatefulWidget {
  const Almuerzo({super.key});

  @override
  State<Almuerzo> createState() => _AlmuerzoState();
}

class _AlmuerzoState extends State<Almuerzo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("Recetas"), backgroundColor: Colors.green),
      body: SingleChildScrollView(),
    );
  }
}
