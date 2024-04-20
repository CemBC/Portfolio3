import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:portfolio_3/portfolio3/IngredientsScreen.dart';

class RecipeListScreen extends StatefulWidget{
  final String category;

  RecipeListScreen({required this.category});

  State<RecipeListScreen> createState() => _RecipeListScreenState();
}

class _RecipeListScreenState extends State<RecipeListScreen> {
  late List<Map<String, dynamic>> recipes;

  void initState() {
    super.initState();
    loadRecipes();
  }

  void loadRecipes() async{
    String data = await DefaultAssetBundle.of(context).loadString('assets/recipes.json');
    List<dynamic> jsonList = jsonDecode(data)['recipes'];
    List<Map<String , dynamic>> parsedRecipes = List<Map<String,dynamic>>.from(jsonList);
    setState(() {
      recipes = parsedRecipes.where((recipe) => recipe['category'] == widget.category).take(3).toList();
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Recipes")),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index]['name']),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => IngredientsScreen(ingredients: recipes[index]['ingredients']),
                ),
              );
            },
          );
        },
      ),
    );
  }
}