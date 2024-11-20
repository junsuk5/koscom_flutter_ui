class Recipe {
  final String category;
  final int id;
  final String name;
  final String image;
  final String chef;
  final String time;
  final double rating;
  final List<RecipeIngredient> ingredients;

  Recipe({
    required this.category,
    required this.id,
    required this.name,
    required this.image,
    required this.chef,
    required this.time,
    required this.rating,
    required this.ingredients,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      category: json['category'] as String,
      id: json['id'] as int,
      name: json['name'] as String,
      image: json['image'] as String,
      chef: json['chef'] as String,
      time: json['time'] as String,
      rating: json['rating'] as double,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => RecipeIngredient.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'category': category,
      'id': id,
      'name': name,
      'image': image,
      'chef': chef,
      'time': time,
      'rating': rating,
      'ingredients': ingredients.map((e) => e.toJson()).toList(),
    };
  }
}

class RecipeIngredient {
  final Ingredient ingredient;
  final int amount;

  RecipeIngredient({
    required this.ingredient,
    required this.amount,
  });

  factory RecipeIngredient.fromJson(Map<String, dynamic> json) {
    return RecipeIngredient(
      ingredient: Ingredient.fromJson(json['ingredient'] as Map<String, dynamic>),
      amount: json['amount'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'ingredient': ingredient.toJson(),
      'amount': amount,
    };
  }
}

class Ingredient {
  final int id;
  final String name;
  final String image;

  Ingredient({
    required this.id,
    required this.name,
    required this.image,
  });

  factory Ingredient.fromJson(Map<String, dynamic> json) {
    return Ingredient(
      id: json['id'] as int,
      name: json['name'] as String,
      image: json['image'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
    };
  }
}