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
    int cal = amount % 4;
    for (int i = 0; i < names.length; i++) {
      for (;;) {
        int index = Random().nextInt(4);
        if (houseName[index].length < (amount / 4)) {
          houseName[index].add(names[i]);
          break;
        }
      }
      //ถ้าหารไม่ลงตัว
      if (cal > 0 && i > 4) {
        for (;;) {
          int index = Random().nextInt(4);
          if (houseName[index].length > 0) {
            i == 3 ? i-- : i++;
            houseName[index].add(names[i]);
            break;
          }
        }
        cal--;
        i++;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(
              'ประชาชื่น',
              style: TextStyle(fontSize: 20),
            ),
            Expanded(
              child: buildCardWithHouseList(houseName[0]),
            ),
            Text(
              'อินทร',
              style: TextStyle(fontSize: 20),
            ),
            Expanded(
              child: buildCardWithHouseList(houseName[1]),
            ),
            Text(
              'กนกอาชีวะ',
              style: TextStyle(fontSize: 20),
            ),
            Expanded(
              child: buildCardWithHouseList(houseName[2]),
            ),
            Text(
              'บูรณพล',
              style: TextStyle(fontSize: 20),
            ),
            Expanded(
              child: buildCardWithHouseList(houseName[3]),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildCardWithHouseList(List<String> data) {
  return Card(
    elevation: 5.0,
    child: ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(data[index]),
        );
      },
    ),
  );
}
