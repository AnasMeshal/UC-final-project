import 'package:final_porject/model/Item.dart';
import 'package:final_porject/widgets/todo_widgets/accessories_list.dart';
import 'package:final_porject/widgets/todo_widgets/clothes_list.dart';
import 'package:final_porject/widgets/todo_widgets/devices_list.dart';
import 'package:final_porject/widgets/todo_widgets/food_list.dart';
import 'package:final_porject/widgets/todo_widgets/hygiene_list.dart';
import 'package:final_porject/widgets/todo_widgets/pets_list.dart';
import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  TodoScreen({Key? key, required this.todoList}) : super(key: key);

  final List<Item> todoList;

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  bool isChecked = false;
  var foodList;
  var clothesList;
  var hygieneList;
  var devicesList;
  var accessoriesList;
  var petsList;

  @override
  void initState() {
    super.initState();
    foodList = widget.todoList.where((item) => item.genre == "food").toList();
    clothesList =
        widget.todoList.where((item) => item.genre == "cloth").toList();
    hygieneList =
        widget.todoList.where((item) => item.genre == "hygiene").toList();
    devicesList =
        widget.todoList.where((item) => item.genre == "device").toList();
    accessoriesList =
        widget.todoList.where((item) => item.genre == "accessorie").toList();
    petsList = widget.todoList.where((item) => item.genre == "pet").toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('T O D O'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              FoodList(foodList: foodList),
              ClothesList(clothesList: clothesList),
              HygieneList(hygieneList: hygieneList),
              DevicesList(deviceList: devicesList),
              AccessoriesList(accessoriesList: accessoriesList),
              PetsList(petsList: petsList),
            ],
          ),
        ));
  }
}
