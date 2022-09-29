import 'package:flutter/material.dart';

// Model
import 'package:final_porject/model/Item.dart';

// Tile page
import 'package:final_porject/widgets/clothe_tile.dart';

class ClothesScreen extends StatelessWidget {
  ClothesScreen({Key? key, required this.todoList}) : super(key: key);

  final List<Item> todoList;

  var clothes = [
    Item(
        name: 'Hanger',
        imgURL: 'assets/images/clothes/hanger.png',
        genre: 'cloth',
        isChecked: false),
    Item(
        name: 'Tie',
        imgURL: 'assets/images/clothes/tie.png',
        genre: 'cloth',
        isChecked: false),
    Item(
        name: 'Padel Shoes',
        imgURL: 'assets/images/clothes/padelShoe.png',
        genre: 'cloth',
        isChecked: false),
    Item(
        name: 'Shirt',
        imgURL: 'assets/images/clothes/shirt.png',
        genre: 'cloth',
        isChecked: false),
    Item(
        name: 'Towel',
        imgURL: 'assets/images/clothes/towel.png',
        genre: 'cloth',
        isChecked: false),
    Item(
        name: 'T-shirt',
        imgURL: 'assets/images/clothes/tshirt.png',
        genre: 'cloth',
        isChecked: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('C L O T H E S'),
      ),
      body: ListView.builder(
        itemCount: clothes.length,
        itemBuilder: (context, index) => ClotheTile(
          item: clothes[index],
          todoList: todoList,
        ),
      ),
    );
  }
}
