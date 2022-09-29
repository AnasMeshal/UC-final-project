import 'package:flutter/material.dart';

// Model
import 'package:final_porject/model/Item.dart';

// Tile page
import 'package:final_porject/widgets/pet_tile.dart';

class PetScreen extends StatelessWidget {
  PetScreen({Key? key, required this.todoList}) : super(key: key);

  final List<Item> todoList;

  var pets = [
    Item(
        name: 'Wet Food',
        imgURL: 'assets/images/pets/wetfood.png',
        genre: 'pet',
        isChecked: false),
    Item(
        name: 'Dry Food',
        imgURL: 'assets/images/pets/dryfood.png',
        genre: 'pet',
        isChecked: false),
    Item(
        name: 'Toy',
        imgURL: 'assets/images/pets/toy.png',
        genre: 'pet',
        isChecked: false),
    Item(
        name: 'Tent',
        imgURL: 'assets/images/pets/tent.png',
        genre: 'pet',
        isChecked: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('P E T S'),
      ),
      body: ListView.builder(
        itemCount: pets.length,
        itemBuilder: (context, index) => PetTile(
          item: pets[index],
          todoList: todoList,
        ),
      ),
    );
  }
}
