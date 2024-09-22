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


  String printValue (){
    List<int> res = [];
    setState(() {
      for(int i = 0; i< NumberButtons.clickValue.length; i++){
        res.add(NumberButtons.clickValue[i]);
      }
    });
    return res.toString();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
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
                              printValue(),
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

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            OperatorButtons(
                                operationColor: Colors.black87,
                                containerColor: Colors.grey.shade400,
                                operation: 'AC'),
                            OperatorButtons(
                                operationColor: Colors.black87,
                                containerColor: Colors.grey.shade400,
                                operation: '+/-'),
                            OperatorButtons(
                                operationColor: Colors.black87,
                                containerColor: Colors.grey.shade400,
                                operation: '%'),
                            OperatorButtons(
                                operationColor: Colors.grey.shade200,
                                containerColor: Colors.orange,
                                operation: '÷'),
                          ],
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            NumberButtons(
                              value: 7,
                            ),
                            NumberButtons(value: 8),
                            NumberButtons(value: 9),
                            OperatorButtons(
                                operationColor: Colors.grey.shade200,
                                containerColor: Colors.orange,
                                operation: 'x'),
                          ],
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            NumberButtons(value: 4),
                            NumberButtons(value: 5),
                            NumberButtons(value: 6),
                            OperatorButtons(
                                operationColor: Colors.grey.shade200,
                                containerColor: Colors.orange,
                                operation: '-'),
                          ],
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            NumberButtons(value: 3),
                            NumberButtons(value: 2),
                            NumberButtons(value: 1),
                            OperatorButtons(
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
                            OperatorButtons(
                                operationColor: Colors.grey.shade200,
                                containerColor: Colors.grey.shade800,
                                operation: '.'),
                            OperatorButtons(
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
    );
  }
}

class OperatorButtons extends StatelessWidget {
  late Color operationColor;
  late Color containerColor;
  late String operation;

  OperatorButtons(
      {required this.operationColor,
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
              color: operationColor,
              fontSize: 32,
            ),
          ),
        ),
      ),
    );
  }
}
