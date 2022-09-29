import 'package:flutter/material.dart';

// Model
import 'package:final_porject/model/Item.dart';

class FoodTile extends StatelessWidget {
  const FoodTile({Key? key, required this.item, required this.todoList})
      : super(key: key);

  final Item item;
  final List<Item> todoList;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(10),
        width: 200,
        height: 235,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 10,
                offset: Offset(0, 3),
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Container(
                child: Image.asset(
                  item.imgURL,
                  height: 150,
                ),
              ),
              Text(
                item.name,
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              OutlinedButton(
                onPressed: () async {
                  todoList.add(Item(
                      name: item.name,
                      imgURL: item.imgURL,
                      genre: item.genre,
                      isChecked: false));
                  final text =
                      "${item.name} has been added to your todo list !~";
                  final snackBar = SnackBar(
                    content: Text(text),
                    duration: Duration(seconds: 2),
                    action: SnackBarAction(
                      label: "Dismiss",
                      onPressed: () {},
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: const Text(
                  'Add',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
