import 'package:flutter/material.dart';

// Model
import 'package:final_porject/model/Item.dart';

// Tile page
import 'package:final_porject/widgets/device_tile.dart';

class DeviceScreen extends StatelessWidget {
  DeviceScreen({Key? key, required this.todoList}) : super(key: key);

  final List<Item> todoList;

  var devices = [
    Item(
        name: 'Laptop',
        imgURL: 'assets/images/devices/laptop.png',
        genre: 'device',
        isChecked: false),
    Item(
        name: 'Extension',
        imgURL: 'assets/images/devices/extension.png',
        genre: 'device',
        isChecked: false),
    Item(
        name: 'Air Tag',
        imgURL: 'assets/images/devices/airtag.png',
        genre: 'device',
        isChecked: false),
    Item(
        name: 'HDMI',
        imgURL: 'assets/images/devices/hdmi.png',
        genre: 'device',
        isChecked: false),
    Item(
        name: 'Headphone',
        imgURL: 'assets/images/devices/headphone.png',
        genre: 'device',
        isChecked: false),
    Item(
        name: 'Ipad',
        imgURL: 'assets/images/devices/ipad.png',
        genre: 'device',
        isChecked: false),
    Item(
        name: 'Mouse',
        imgURL: 'assets/images/devices/mouse.png',
        genre: 'device',
        isChecked: false),
    Item(
        name: 'Smart Watch',
        imgURL: 'assets/images/devices/smartwatch.png',
        genre: 'device',
        isChecked: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('E L E C T R O N I C S'),
      ),
      body: ListView.builder(
        itemCount: devices.length,
        itemBuilder: (context, index) => DeviceTile(
          item: devices[index],
          todoList: todoList,
        ),
      ),
    );
  }
}
