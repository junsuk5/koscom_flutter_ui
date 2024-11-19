import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      home: RecipeScreen(),
    );
  }
}

class RecipeScreen extends StatelessWidget {
  final ingredients = [
    {
      'imageUrl': 'assets/iu.jpg',
      'name': 'Tomatos',
      'weight': '500g',
    },
    {
      'imageUrl': 'assets/iu.jpg',
      'name': '아이유',
      'weight': '50kg',
    },
    {
      'imageUrl': 'assets/iu.jpg',
      'name': '양파',
      'weight': '100g',
    },
  ];

  RecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: ingredients.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: IngredientItemWidget(
              imageUrl: ingredients[index]['imageUrl']!,
              name: ingredients[index]['name'] ?? '이름 없음',
              weight: ingredients[index]['weight'] ?? '0g',
            ),
          );
        },
      ),
    );
  }
}

class IngredientItemWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String weight;

  const IngredientItemWidget({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      height: 100,
      child: Row(
        children: [
          const SizedBox(width: 20),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imageUrl,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20),
          Text(
            name,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          Text(
            weight,
            style: const TextStyle(
              fontSize: 25,
              color: Colors.grey,
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
