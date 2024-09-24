import 'package:flutter/material.dart';


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
                              vertical: 2, horizontal:18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                  newValue,
                                    style: TextStyle(
                                        fontSize: 52, color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              clicks(
                                  'AC', (_) => clearCalculator(),Colors.grey.shade400,Colors.black
                              ),
                              clicks(
                                  '+/-', pressedOperator,Colors.grey.shade400,Colors.black
                              ),
                              clicks(
                                  '%', pressedOperator,Colors.grey.shade400,Colors.black
                              ),
                              clicks(
                                  '÷', pressedOperator,Colors.orange,Colors.white
                              ),
                            ],
                          ),
                          SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              clicks(
                                  '7', pressedNum,Colors.grey.shade800,Colors.white
                              ),
                              clicks(
                                  '8', pressedNum,Colors.grey.shade800,Colors.white
                              ),
                              clicks(
                                  '9', pressedNum,Colors.grey.shade800,Colors.white
                              ),
                              clicks(
                                  'x', pressedOperator,Colors.orange,Colors.white
                              ),
                            ],
                          ),
                          SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              clicks(
                                  '4', pressedNum,Colors.grey.shade800,Colors.white
                              ),
                              clicks(
                                  '5', pressedNum,Colors.grey.shade800,Colors.white
                              ),
                              clicks(
                                  '6', pressedNum,Colors.grey.shade800,Colors.white
                              ),
                              clicks(
                                  '-', pressedOperator,Colors.orange,Colors.white
                              ),
                            ],
                          ),
                          SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              clicks(
                                  '1', pressedNum,Colors.grey.shade800,Colors.white
                              ),
                              clicks(
                                  '2', pressedNum,Colors.grey.shade800,Colors.white
                              ),
                              clicks(
                                  '3', pressedNum,Colors.grey.shade800,Colors.white
                              ),
                              clicks(
                                  '+', pressedOperator,Colors.orange,Colors.white
                              ),
                            ],
                          ),
                          SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 180,
                                child: clicks(
                                    '0', pressedNum,Colors.grey.shade800,Colors.white
                                ),
                              ),
                               clicks(
                                  '.', pressedNum,Colors.grey.shade800,Colors.white
                              ),
                              clicks(
                                  '=', (_) => calculateResult(),Colors.orange,Colors.white
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                        ],
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

Widget clicks(String clickValue, Function(String) onPressed, Color clickColor, Color valueColor){
  return GestureDetector(
    onTap: (){
      onPressed (clickValue);
    },
    child: Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        color: clickColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Text(
          clickValue,
          style: TextStyle(
            color: valueColor,
            fontSize: 32,
          ),
        ),
      ),
    ),
  );
}


