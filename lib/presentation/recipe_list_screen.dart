import 'package:flutter/material.dart';
import 'package:flutter_ui/presentation/recipe_list_state.dart';

class RecipeListScreen extends StatelessWidget {
  final RecipeListState state;

  const RecipeListScreen({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: state.isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: state.recipes.length,
              itemBuilder: (_, index) {
                final recipe = state.recipes[index];
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
