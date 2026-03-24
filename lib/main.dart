import 'package:flutter/material.dart';

void main() => runApp(const DominosApp());

class DominosApp extends StatelessWidget {
  const DominosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: const DominosGrid(),
    );
  }
}

class DominosGrid extends StatelessWidget {
  const DominosGrid({super.key});

  // Lista de datos simulados para 14 productos
  final List<Map<String, String>> productos = const [
    {"nombre": "Pizza Pepperoni", "desc": "Clásica y deliciosa", "img": "https://raw.githubusercontent.com/Mirelesalexis/imagen-dominios2/refs/heads/main/Gemini_Generated_Image_nx38aunx38aunx38.png"},
    {"nombre": "Pizza Hawiana", "desc": "Piña y jamón", "img": "https://raw.githubusercontent.com/Mirelesalexis/imagen-dominios2/refs/heads/main/Gemini_Generated_Image_otmxeaotmxeaotmx.png"},
    {"nombre": "Pizzeta de Carne", "desc": "Carne a elegir", "img": "https://raw.githubusercontent.com/Mirelesalexis/imagen-dominios2/refs/heads/main/Gemini_Generated_Image_ui042oui042oui04.png"},
    {"nombre": "Pizza de Queso", "desc": "Queso fresco", "img": "https://raw.githubusercontent.com/Mirelesalexis/imagen-dominios2/refs/heads/main/Gemini_Generated_Image_z2g72jz2g72jz2g7.png"},
    {"nombre": "Papas Fritas", "desc": "Complementos", "img": "https://raw.githubusercontent.com/Mirelesalexis/imagen-dominios2/refs/heads/main/Gemini_Generated_Image_3laqno3laqno3laq.png"},
    {"nombre": "Pepsi 500ml", "desc": "Bebida individual", "img": "https://raw.githubusercontent.com/Mirelesalexis/imagen-dominos/refs/heads/main/Gemini_Generated_Image_43pfrj43pfrj43pf.png"},
    {"nombre": "Fanta 500ml", "desc": "Bebida individual", "img": "https://raw.githubusercontent.com/Mirelesalexis/imagen-dominos/refs/heads/main/Gemini_Generated_Image_1mh85n1mh85n1mh8.png"},
    {"nombre": "Coca-Cola 500ml", "desc": "Bebida individual", "img": "https://raw.githubusercontent.com/Mirelesalexis/imagen-dominos/refs/heads/main/Gemini_Generated_Image_g0njrrg0njrrg0nj.png"},
    {"nombre": "Sprite", "desc": "Bebida individual", "img": "https://raw.githubusercontent.com/Mirelesalexis/imagen-dominos/refs/heads/main/Gemini_Generated_Image_pv23zspv23zspv23.png"},
    {"nombre": "Aros de cebolla", "desc": "Complementos", "img": "https://raw.githubusercontent.com/Mirelesalexis/imagen-dominos/refs/heads/main/aros.jpg"},
    {"nombre": "Dedos de Queso", "desc": "Complementos", "img": "https://raw.githubusercontent.com/Mirelesalexis/imagen-dominos/refs/heads/main/ded.jpg"},
    {"nombre": "Boneless BBQ", "desc": "Complementos", "img": "https://raw.githubusercontent.com/Mirelesalexis/imagen-dominos/refs/heads/main/bbqqq.png"},
    {"nombre": "Boneless Bufalo", "desc": "Complementos", "img": "https://raw.githubusercontent.com/Mirelesalexis/imagen-dominos/refs/heads/main/fs.png"},
    {"nombre": "Pepsi 3L", "desc": "Bebida familiar", "img": "https://raw.githubusercontent.com/Mirelesalexis/imagen-dominos/refs/heads/main/Peppp.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dominos Grid Menu - Alexis'),
        backgroundColor: const Color(0xFF006491), // Azul Dominos
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        // Definimos las 2 columnas
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75, // Ajusta la altura de las tarjetas
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: productos.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Imagen Superior
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
                    child: Image.network(
                      productos[index]['img']!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
                // Información Inferior (Título, Subtítulo, Estrellas)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productos[index]['nombre']!,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        productos[index]['desc']!,
                        style: const TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: List.generate(5, (starIndex) {
                          return const Icon(Icons.star, color: Colors.amber, size: 16);
                        }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}