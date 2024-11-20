import 'dart:collection';

import 'package:flutter/material.dart';

import '../data/model/recipe_models.dart';
import '../data/recipe_repository.dart';

class RecipeListViewModel with ChangeNotifier {
  final _repository = RecipeRepository();

  List<Recipe> _recipes = [];
  bool _isLoading = false;

  List<Recipe> get recipes => List.unmodifiable(_recipes);

  bool get isLoading => _isLoading;

  RecipeListViewModel() {
    loadData();
  }

  Future<void> loadData() async {
    _isLoading = true;
    notifyListeners();

    _recipes = await _repository.getRecipes();
    _isLoading = false;
    notifyListeners();
  }
}
