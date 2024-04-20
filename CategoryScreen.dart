import 'package:flutter/material.dart';
import 'package:portfolio_3/portfolio3/RecipeListScreen.dart';
class CategoryScreen extends StatelessWidget{
  const CategoryScreen({super.key});

  Widget build( BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Categories"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RecipeListScreen(category: 'italian')),
                );
              },
              child: Text('Italian'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RecipeListScreen(category: 'indian')),
                );
              },
              child: Text('Indian'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RecipeListScreen(category: 'turkish')),
                );
              },
              child: Text('Turkish'),
            ),
          ],
        )
      )
    );
  }
}