import 'dart:math';

import 'package:flutter/material.dart';

class ItsYou extends StatelessWidget {
  final List<String> names;
  final int amount;
  // final List<String> prachachuen = [];
  // final List<String> inthakon = [];
  // final List<String> kanokachiwa = [];
  // final List<String> buranaphon = [];
  final List<List<String>> houseName = [
    ['a', 'b'],
    ['inthakon'],
    ['kanokachiwa'],
    ['buranaphon']
  ];

  ItsYou({
    Key? key,
    required this.names,
    required this.amount,
  }) : super(key: key) {
    //this._random();
  }

  _random() {
    int cal = amount - (((amount / 4).ceil()) * 4).toInt();
    for (int i = 0; i < names.length; i++) {
      List<String> house;

      for (;;) {
        int index = Random().nextInt(4);
        // List<String> houseCheck = houseName[index];
        if (houseName[index].length < (amount / 4)) {
          houseName[index].add(names[i]);
          // house = houseCheck;
          break;
        }
      }
      // house.add(names[i]);
      //ถ้าหารไม่ลงตัว
      if (cal > 0) {
        int index = Random().nextInt(4);
        //String houseCheck = houseName[index];
        // dataList(houseCheck).add(names[i]);
        cal--;
        i++;
      }
    }
    //return;
  }

  // List<String> dataList(String houseCheck) {
  //   switch (houseCheck) {
  //     case 'prachachuen':
  //       return prachachuen;
  //     case 'inthakon':
  //       return inthakon;
  //     case 'kanokachiwa':
  //       return kanokachiwa;
  //     case 'buranaphon':
  //       return buranaphon;
  //     default:
  //       return [];
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ปู้น ๆ'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('ประชาชื่น'),
            buildCardWithHouseList(houseName[0]),
            // Text('อินทร'),
            // buildCardWithHouseList(inthakon),
            // Text('กนกอาชีวะ'),
            // buildCardWithHouseList(kanokachiwa),
            // Text('บูรณพล'),
            // buildCardWithHouseList(buranaphon),
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
