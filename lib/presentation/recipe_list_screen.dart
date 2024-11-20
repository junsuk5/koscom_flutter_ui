import 'package:flutter/material.dart';
import 'package:flutter_ui/data/recipe_repository.dart';

import '../data/model/recipe_models.dart';

class RecipeListScreen extends StatefulWidget {
  const RecipeListScreen({super.key});

  @override
  State<RecipeListScreen> createState() => _RecipeListScreenState();
}

class _RecipeListScreenState extends State<RecipeListScreen> {
  final repository = RecipeRepository();
  List<Recipe> _recipes = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    isLoading = true;
    repository.getRecipes().then((recipes) {
      setState(() {
        _recipes = recipes;
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _recipes.length,
              itemBuilder: (_, index) {
                final recipe = _recipes[index];
                return ListTile(
                  title: Text(recipe.name),
                  subtitle: Text(recipe.chef),
                  leading: Image.network(
                    recipe.image,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
    );
  }
}
