import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount;

    if (screenWidth < 800) {
      crossAxisCount = 2;
    } else {
      crossAxisCount = 4;
    }

    return Scaffold(
      appBar:
          AppBar(title: const Text("Recetas"), backgroundColor: Colors.green),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            GridView.count(
              crossAxisCount: crossAxisCount,
              shrinkWrap: true,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                _buildSummaryCard(
                    context,
                    "Desayuno",
                    "Recetas para desayuno",
                    Icons.free_breakfast,
                    "https://unsplash.com/es/fotos/una-mesa-blanca-cubierta-con-platos-de-comida-0_g--_am9WQ",
                    "/desayuno"),
                _buildSummaryCard(
                    context,
                    "Almuerzo",
                    "Recetas para almuerzo",
                    Icons.lunch_dining,
                    "https://unsplash.com/es/fotos/una-mesa-cubierta-con-muchos-platos-de-comida-hatqfX3b9Vo",
                    "/almuerzo"),
                _buildSummaryCard(
                    context,
                    "Cena",
                    "Recetas para cena",
                    Icons.dinner_dining,
                    "https://unsplash.com/es/fotos/alimentos-cocinados-en-plato-de-ceramica-blanca-O4wSmNb6w18",
                    "/cena"),
                _buildSummaryCard(
                    context,
                    "Postres",
                    "Recetas para postres",
                    Icons.cake,
                    "https://unsplash.com/es/fotos/helado-con-sirope-de-chocolate-sobre-mesa-de-madera-marron-6hr5YZDjyHc",
                    "/postres"),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget _buildSummaryCard(BuildContext context, String title, String value,
    IconData icon, String imagesrc, String route) {
  return GestureDetector(
    onTap: () => Navigator.pushNamed(context, route),
    child: Card(
      child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  /*Image.network(
                    imagesrc,
                    fit: BoxFit.fill,
                  ),*/
                  Icon(
                    icon,
                    size: 32,
                  ),
                  Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          )),
    ),
  );
}
