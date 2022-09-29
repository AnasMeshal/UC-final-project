import 'package:flutter/material.dart';

// Model
import 'package:final_porject/model/Item.dart';

// Tile page
import 'package:final_porject/widgets/food_tile.dart';

class FoodScreen extends StatelessWidget {
  FoodScreen({Key? key, required this.todoList}) : super(key: key);

  final List<Item> todoList;

  var food = [
    Item(
        name: 'Doritos',
        imgURL: 'assets/images/food/doritos.jpg',
        genre: 'food',
        isChecked: false),
    Item(
        name: 'Gum',
        imgURL: 'assets/images/food/gum.jpeg',
        genre: 'food',
        isChecked: false),
    Item(
        name: 'Protien Bar',
        imgURL: 'assets/images/food/protienBar.jpg',
        genre: 'food',
        isChecked: false),
    Item(
        name: 'm&m',
        imgURL: 'assets/images/food/m&m.jpg',
        genre: 'food',
        isChecked: false),
    Item(
        name: 'Flour',
        imgURL: 'assets/images/food/flour.jpg',
        genre: 'food',
        isChecked: false),
    Item(
        name: 'Salt',
        imgURL: 'assets/images/food/salt.jpg',
        genre: 'food',
        isChecked: false),
    Item(
        name: 'Pepper',
        imgURL: 'assets/images/food/pepper.jpg',
        genre: 'food',
        isChecked: false),
    Item(
        name: 'Rice',
        imgURL: 'assets/images/food/rice.jpg',
        genre: 'food',
        isChecked: false),
    Item(
        name: 'Tomato Paste',
        imgURL: 'assets/images/food/tomatoPaste.jpg',
        genre: 'food',
        isChecked: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('F O O D'),
      ),
      body: ListView.builder(
        itemCount: food.length,
        itemBuilder: (context, index) => FoodTile(
          todoList: todoList,
          item: food[index],
        ),
      ),
    );
  }
}
