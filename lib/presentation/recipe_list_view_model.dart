import 'package:flutter/material.dart';
import 'package:flutter_ui/presentation/recipe_list_state.dart';

import '../data/recipe_repository.dart';

class RecipeListViewModel with ChangeNotifier {
  final _repository = RecipeRepository();

  RecipeListState _state = RecipeListState(
    recipes: [],
    isLoading: false,
  );

  RecipeListState get state => _state;

  RecipeListViewModel() {
    loadData();
  }

  Future<void> loadData() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    _state = state.copyWith(
      recipes: await _repository.getRecipes(),
      isLoading: false,
    );
    notifyListeners();
  }
}
