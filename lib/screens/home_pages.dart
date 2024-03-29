import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fourkings/screens/itsyou.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _amountController = TextEditingController();
  final _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                '4 King',
                style: TextStyle(fontSize: 50),
              ),
              Text(
                'สถาบันไหนคือคุณ!!!',
                style: TextStyle(fontSize: 20),
              ),
              Spacer(),
              Text('ระบุจำนวนคน'),
              TextField(
                controller: _amountController,
                decoration: InputDecoration(
                  hintText: 'จำนวน',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 3,
                      color: Colors.greenAccent,
                    ),
                  ),
                ),
              ),
              Text('ระบุชื่อ'),
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: 'ชื่อ(เว้นแต่ละชื่อด้วยเว้นวรรค)',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 3,
                      color: Colors.greenAccent,
                    ),
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    List<String> allNames =
                        _nameController.text.trim().split(' ');
                    int amount = int.parse(_amountController.text);
                    allNames
                                .where((element) =>
                                    element.contains(' ') || element.isEmpty)
                                .length >
                            0
                        ? amount--
                        : amount = amount;
                    if (amount != allNames.length) {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("จำนวนชื่อกับจำนวนที่กรอกไม่ตรงกัน"),
                            content: Text("กรุณากรอกให้ถูกต้อง"),
                            actions: <Widget>[
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("Close"),
                              ),
                            ],
                          );
                        },
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return ItsYou(names: allNames, amount: amount);
                        }),
                      );
                    }
                  },
                  child: Text('คัดสรร'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
