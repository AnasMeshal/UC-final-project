import 'package:flutter/material.dart';

// Model
import 'package:final_porject/model/Item.dart';

// Tile page
import 'package:final_porject/widgets/accessorie_tile.dart';

class AccessoriesScreen extends StatelessWidget {
  AccessoriesScreen({Key? key, required this.todoList}) : super(key: key);

  final List<Item> todoList;

  var accessories = [
    Item(
        name: 'Earings',
        imgURL: 'assets/images/accessories/earings.png',
        genre: 'accessorie',
        isChecked: false),
    Item(
        name: 'Ring',
        imgURL: 'assets/images/accessories/ring.png',
        genre: 'accessorie',
        isChecked: false),
    Item(
        name: 'Wallet',
        imgURL: 'assets/images/accessories/wallet.png',
        genre: 'accessorie',
        isChecked: false),
    Item(
        name: 'Back Pack',
        imgURL: 'assets/images/accessories/backpack.png',
        genre: 'accessorie',
        isChecked: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('A C C E S S O R I E S'),
      ),
      body: ListView.builder(
        itemCount: accessories.length,
        itemBuilder: (context, index) => AccessorieTile(
          todoList: todoList,
          item: accessories[index],
        ),
      ),
    );
  }
}
