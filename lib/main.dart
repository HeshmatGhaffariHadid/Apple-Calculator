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

 String newValue = '0';
 String lastValue = '0';
 String operator = '';

  void pressedNum(String number){
    setState(() {
      if(newValue == '0'){
        newValue = number;
      }else{
        newValue += number;
      }
    });
  }

void pressedOperator(String ope){
    setState(() {
      lastValue = newValue;
      newValue = '0';
      operator = ope;
    });
}

void calculateResult(){
      double num1 = double.parse(lastValue);
      double num2 = double.parse(newValue);
      double result = 0;
      if(operator == '+'){
        result = num1 + num2;
      }else if(operator == '-'){
        result = num1 - num2;
      }else if(operator == 'x'){
        result = num1 * num2;
      }else if(operator == '÷'){
        result = num1 / num2;
      }

      setState(() {
        newValue = result.toString();
        lastValue = '0';
        operator = '';
      });
}

void clearCalculator(){
    setState(() {
      newValue = '0';
      lastValue = '0';
      operator = '';
    });
}


 Widget clicks (String clickValue, Function(String ) onPressed){
   return GestureDetector(
     onTap: (){
       onPressed (clickValue);
     },
     child: Container(
       height: 80,
       width: 80,
       decoration: BoxDecoration(
         color: Colors.grey.shade800,
         borderRadius: BorderRadius.circular(100),
       ),
       child: Center(
         child: Text(
           clickValue,
           style: TextStyle(
             color: Colors.white,
             fontSize: 32,
           ),
         ),
       ),
     ),
   );
 }
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
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
                                clicks(
                                  value: 7,
                                ),
                                clicks(value: 8),
                                clicks(value: 9),
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
                                clicks(value: 4),
                                clicks(value: 5),
                                clicks(value: 6),
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
                                clicks(value: 3),
                                clicks(value: 2),
                                clicks(value: 1),
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
            ],
          ),
        ),
      ),
    );
  }
}

class OperatorButtons extends StatefulWidget {
  late Color operationColor;
  late Color containerColor;
  late String operation;

  OperatorButtons(
      {required this.operationColor,
      required this.containerColor,
      required this.operation});

  @override
  State<OperatorButtons> createState() => _OperatorButtonsState();
}

class _OperatorButtonsState extends State<OperatorButtons> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          switch (widget.operation) {
            case '+':
          }
        });
      },
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          color: widget.containerColor,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Center(
          child: Text(
            widget.operation,
            style: TextStyle(
              color: widget.operationColor,
              fontSize: 32,
            ),
          ),
        ),
      ),
    );
  }
}
