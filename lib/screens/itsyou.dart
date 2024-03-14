import 'dart:math';

import 'package:flutter/material.dart';

class ItsYou extends StatelessWidget {
  final List<String> names;
  final int amount;
  final List<String> prachachuen = [];
  final List<String> inthakon = [];
  final List<String> kanokachiwa = [];
  final List<String> buranaphon = [];
  final List<String> house = [
    'prachachuen',
    'inthakon',
    'kanokachiwa',
    'buranaphon'
  ];

  ItsYou({
    Key? key,
    required this.names,
    required this.amount,
  }) : super(key: key);

  _random() {
    for (int i = 0; i < names.length; i++) {
      int index = Random().nextInt(4);
      if (house[index] < (amount / 4)) {}
    }
    //return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ปู้น ๆ'),
      ),
      body: Center(
        child: Column(
          children: [
            Card(
              elevation: 5.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Container(child: Text('data'))],
              ),
            ),
            // Expanded(
            //   child: ListView.builder(
            //     itemCount: names.length,
            //     itemBuilder: (context, index) {
            //       return ListTile(
            //         title: Text(names[index]),
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
