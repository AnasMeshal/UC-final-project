import 'package:flutter/material.dart';

class FoodList extends StatefulWidget {
  const FoodList({Key? key, required this.foodList}) : super(key: key);

  final List foodList;

  @override
  State<FoodList> createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.all(15),
          child: Text(
            'Food',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: widget.foodList.length == 0
              ? Container(
                  height: 80,
                  alignment: Alignment.center,
                  child: Text(
                    "No items found!",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffFF9800)),
                  ),
                )
              : SizedBox(
                  height: 250,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.foodList.length,
                      itemBuilder: (context, index) => Center(
                            child: Container(
                              margin: EdgeInsets.only(
                                left: 20,
                                right: 20,
                              ),
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  children: [
                                    Container(
                                      child: Image.asset(
                                        widget.foodList[index].imgURL,
                                        height: 150,
                                      ),
                                    ),
                                    Text(
                                      widget.foodList[index].name,
                                      style: TextStyle(
                                          fontSize: 23,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Checkbox(
                                      value: widget.foodList[index].isChecked,
                                      checkColor: Colors.white,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          widget.foodList[index].isChecked =
                                              value!;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )),
                ),
        )
      ],
    );
  }
}
