import 'package:final_porject/widgets/hygiene_tile.dart';
import 'package:flutter/material.dart';

// Model
import 'package:final_porject/model/Item.dart';

// Tile page
import 'package:final_porject/widgets/clothe_tile.dart';

class HygieneScreen extends StatelessWidget {
  HygieneScreen({Key? key, required this.todoList}) : super(key: key);

  final List<Item> todoList;

  var hygiene = [
    Item(
        name: 'Soap',
        imgURL: 'assets/images/hygiene/soap.png',
        genre: 'hygiene',
        isChecked: false),
    Item(
        name: 'Loofah',
        imgURL: 'assets/images/hygiene/loofah.png',
        genre: 'hygiene',
        isChecked: false),
    Item(
        name: 'Perfume',
        imgURL: 'assets/images/hygiene/perfume.png',
        genre: 'hygiene',
        isChecked: false),
    Item(
        name: 'Shampoo',
        imgURL: 'assets/images/hygiene/shampoo.png',
        genre: 'hygiene',
        isChecked: false),
    Item(
        name: 'Toothbrush',
        imgURL: 'assets/images/hygiene/toothbrush.png',
        genre: 'hygiene',
        isChecked: false),
    Item(
        name: 'Tooth paste',
        imgURL: 'assets/images/hygiene/toothpaste.png',
        genre: 'hygiene',
        isChecked: false),
    Item(
        name: 'Vaseline',
        imgURL: 'assets/images/hygiene/vaseline.png',
        genre: 'hygiene',
        isChecked: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('H Y G I E N E'),
      ),
      body: ListView.builder(
        itemCount: hygiene.length,
        itemBuilder: (context, index) => HygieneTile(
          item: hygiene[index],
          todoList: todoList,
        ),
      ),
    );
  }
}
