import 'package:flutter/material.dart';

import '../data/model/recipe_models.dart';

class RecipeListScreen extends StatelessWidget {
  final List<Recipe> recipes;
  final bool isLoading;

  const RecipeListScreen({
    super.key,
    required this.recipes,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: recipes.length,
              itemBuilder: (_, index) {
                final recipe = recipes[index];
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
