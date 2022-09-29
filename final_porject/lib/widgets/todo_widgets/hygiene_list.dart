import 'package:flutter/material.dart';

class HygieneList extends StatefulWidget {
  const HygieneList({Key? key, required this.hygieneList}) : super(key: key);

  final List hygieneList;

  @override
  State<HygieneList> createState() => _HygieneListState();
}

class _HygieneListState extends State<HygieneList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.all(15),
          child: Text(
            'Hygiene',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: widget.hygieneList.length == 0
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
                      itemCount: widget.hygieneList.length,
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
                                        widget.hygieneList[index].imgURL,
                                        height: 150,
                                      ),
                                    ),
                                    Text(
                                      widget.hygieneList[index].name,
                                      style: TextStyle(
                                          fontSize: 23,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Checkbox(
                                      value:
                                          widget.hygieneList[index].isChecked,
                                      checkColor: Colors.white,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          widget.hygieneList[index].isChecked =
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
