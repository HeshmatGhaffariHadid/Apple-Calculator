import 'package:flutter/material.dart';

import 'clicks.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int clickValue = 42;
  int answer = 0;
  List<String> buttonValue = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 2),
            child: Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  clickValue.toString(),
                                  style: TextStyle(
                                      fontSize: 52, color: Colors.white),
                                ),
                              ],
                            ),
                            SizedBox(height: 100),
                            Text(
                              answer.toString(),
                              style:
                                  TextStyle(fontSize: 52, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // SizedBox(height: 270),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Clicks(
                                  operationColor: Colors.black87,
                                  containerColor: Colors.grey.shade400,
                                  operation: 'AC'),
                              Clicks(
                                  operationColor: Colors.black87,
                                  containerColor: Colors.grey.shade400,
                                  operation: '+/-'),
                              Clicks(
                                  operationColor: Colors.black87,
                                  containerColor: Colors.grey.shade400,
                                  operation: '%'),
                              Clicks(
                                  operationColor: Colors.grey.shade200,
                                  containerColor: Colors.orange,
                                  operation: '÷'),
                            ],
                          ),
                          SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Clicks(
                                  operationColor: Colors.grey.shade200,
                                  containerColor: Colors.grey.shade800,
                                  operation: '7'),
                              Clicks(
                                  operationColor: Colors.grey.shade200,
                                  containerColor: Colors.grey.shade800,
                                  operation: '8'),
                              Clicks(
                                  operationColor: Colors.grey.shade200,
                                  containerColor: Colors.grey.shade800,
                                  operation: '9'),
                              Clicks(
                                  operationColor: Colors.grey.shade200,
                                  containerColor: Colors.orange,
                                  operation: 'x'),
                            ],
                          ),
                          SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Clicks(
                                  operationColor: Colors.grey.shade200,
                                  containerColor: Colors.grey.shade800,
                                  operation: '4'),
                              Clicks(
                                  operationColor: Colors.grey.shade200,
                                  containerColor: Colors.grey.shade800,
                                  operation: '5'),
                              Clicks(
                                  operationColor: Colors.grey.shade200,
                                  containerColor: Colors.grey.shade800,
                                  operation: '6'),
                              Clicks(
                                  operationColor: Colors.grey.shade200,
                                  containerColor: Colors.orange,
                                  operation: '-'),
                            ],
                          ),
                          SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Clicks(
                                  operationColor: Colors.grey.shade200,
                                  containerColor: Colors.grey.shade800,
                                  operation: '3'),
                              Clicks(
                                  operationColor: Colors.grey.shade200,
                                  containerColor: Colors.grey.shade800,
                                  operation: '2'),
                              Clicks(
                                  operationColor: Colors.grey.shade200,
                                  containerColor: Colors.grey.shade800,
                                  operation: '1'),
                              Clicks(
                                  operationColor: Colors.grey.shade200,
                                  containerColor: Colors.orange,
                                  operation: '+'),
                            ],
                          ),
                          SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 80,
                                width: 175,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade800,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                  child: Text(
                                    '0',
                                    style: TextStyle(
                                      fontSize: 32,
                                      color: Colors.grey.shade200,
                                    ),
                                  ),
                                ),
                              ),
                              Clicks(
                                  operationColor: Colors.grey.shade200,
                                  containerColor: Colors.grey.shade800,
                                  operation: '.'),
                              Clicks(
                                  operationColor: Colors.grey.shade200,
                                  containerColor: Colors.orange,
                                  operation: '='),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class OperationsClicks extends StatelessWidget {
  late Color operatorColor;
  late Color containerColor;
  late String operation;

  OperationsClicks(
      {required this.operatorColor,
      required this.containerColor,
      required this.operation});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        switch (operation) {
          case '+':
        }
      },
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Center(
          child: Text(
            operation,
            style: TextStyle(
              color: operatorColor,
              fontSize: 32,
            ),
          ),
        ),
      ),
    );
  }
}
