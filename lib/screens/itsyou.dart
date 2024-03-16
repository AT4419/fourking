import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItsYou extends StatelessWidget {
  final List<String> names;
  final int amount;
  final List<List<String>> houseName = [[], [], [], []];

  ItsYou({
    Key? key,
    required this.names,
    required this.amount,
  }) : super(key: key) {
    this._random();
  }

  _random() {
    int remnant = amount % 4;
    int lengName = names.length;
    if (remnant > 0) {
      List<bool> checkIn = [false, false, false, false];
      while (
          checkIn.where((element) => element == false).length > 4 - remnant) {
        int index = Random().nextInt(4);
        if (checkIn[index] == false) {
          houseName[index].add(names.first);
          names.removeAt(names.indexOf(names.first));
          checkIn[index] = true;
        } else {
          continue;
        }
      }
    }
    lengName = names.length;
    for (int i = 0; i < lengName; i++) {
      int houseIndex = i % 4;
      int index = Random().nextInt(names.length);
      houseName[houseIndex].add(names[index]);
      names.removeAt(index);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: ScrollController(),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(255, 32, 28, 136)),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                'ประชาชื่น (${houseName[0].length})',
                style: TextStyle(fontSize: 20),
              ),
            ),
            buildCardWithHouseList(houseName[0]),
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(255, 32, 28, 136)),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                'อินทร (${houseName[1].length})',
                style: TextStyle(fontSize: 20),
              ),
            ),
            buildCardWithHouseList(houseName[1]),
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(255, 32, 28, 136)),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                'กนกอาชีวะ (${houseName[2].length})',
                style: TextStyle(fontSize: 20),
              ),
            ),
            buildCardWithHouseList(houseName[2]),
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(255, 32, 28, 136)),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                'บูรณพล (${houseName[3].length})',
                style: TextStyle(fontSize: 20),
              ),
            ),
            buildCardWithHouseList(houseName[3]),
          ],
        ),
      ),
    );
  }
}

Widget buildCardWithHouseList(List<String> data) {
  return Card(
    color: Color.fromRGBO(236, 235, 255, 0.875),
    child: Column(
      children: data
          .map(
            (e) => ListTile(
              title: Text(e),
            ),
          )
          .toList(),
    ),
  );
}
