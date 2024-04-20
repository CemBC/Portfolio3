import 'package:flutter/material.dart';

class IngredientsScreen extends StatelessWidget {
  final List<dynamic> ingredients;

  IngredientsScreen({required this.ingredients});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ingredients')),
      body: ListView.builder(
        itemCount: ingredients.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(ingredients[index]),
          );
        },
      ),
    );
  }
}