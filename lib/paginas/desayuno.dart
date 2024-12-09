import 'package:flutter/material.dart';

class Desayuno extends StatefulWidget {
  const Desayuno({super.key});

  @override
  State<Desayuno> createState() => _DesayunoState();
}

class _DesayunoState extends State<Desayuno> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("Recetas"), backgroundColor: Colors.green),
      body: SingleChildScrollView(),
    );
  }
}
