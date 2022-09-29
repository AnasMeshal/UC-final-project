import 'package:final_porject/model/Item.dart';
import 'package:flutter/material.dart';

// Screens
import 'package:final_porject/main.dart';
import 'package:final_porject/screens/todo_screen.dart';
import 'package:final_porject/screens/hygiene_screen.dart';
import 'package:final_porject/screens/food_screen.dart';
import 'package:final_porject/screens/clothes_screen.dart';
import 'package:final_porject/screens/devices_screen.dart';
import 'package:final_porject/screens/accessories_screen.dart';
import 'package:final_porject/screens/pet_screen.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Item> todoList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('M Y   B A G'),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.checklist_rounded),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TodoScreen(
                            todoList: todoList,
                          )));
            }),
        actions: [
          IconButton(
              icon: Icon(MyApp.themeNotifier.value == ThemeMode.light
                  ? Icons.dark_mode
                  : Icons.light_mode),
              onPressed: () {
                MyApp.themeNotifier.value =
                    MyApp.themeNotifier.value == ThemeMode.light
                        ? ThemeMode.dark
                        : ThemeMode.light;
              })
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FoodScreen(
                              todoList: todoList,
                            )),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(right: 5, top: 10),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color(0xffFAFAFA),
                      border: Border.all(width: 2, color: Colors.grey),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 4,
                          blurRadius: 3,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/food.png',
                          width: 150,
                          height: 150,
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ClothesScreen(
                              todoList: todoList,
                            )),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: 5, top: 10),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color(0xffFAFAFA),
                        border: Border.all(width: 2, color: Colors.grey),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 4,
                            blurRadius: 3,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ]),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/clothes.png',
                          width: 150,
                          height: 150,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) =>
                                HygieneScreen(todoList: todoList))));
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 5, top: 10),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color(0xffFAFAFA),
                      border: Border.all(width: 2, color: Colors.grey),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 4,
                          blurRadius: 3,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/hygiene.png',
                          width: 150,
                          height: 150,
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) =>
                                DeviceScreen(todoList: todoList))));
                  }),
                  child: Container(
                    margin: EdgeInsets.only(left: 5, top: 10),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color(0xffFAFAFA),
                      border: Border.all(width: 2, color: Colors.grey),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 4,
                          blurRadius: 3,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/devices.png',
                          width: 150,
                          height: 150,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) =>
                                AccessoriesScreen(todoList: todoList))));
                  }),
                  child: Container(
                    margin: EdgeInsets.only(right: 5, top: 10),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color(0xffFAFAFA),
                      border: Border.all(width: 2, color: Colors.grey),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 4,
                          blurRadius: 3,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/accessories.png',
                          width: 150,
                          height: 150,
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => PetScreen(
                                  todoList: todoList,
                                ))));
                  }),
                  child: Container(
                    margin: EdgeInsets.only(left: 5, top: 10),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color(0xffFAFAFA),
                      border: Border.all(width: 2, color: Colors.grey),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 4,
                          blurRadius: 3,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/pet.png',
                          width: 150,
                          height: 150,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
