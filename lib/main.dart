import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  int input = 0;
  int? result;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 270),
              Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  Text('0',style: TextStyle(
                    fontSize: 52,
                    color: Colors.white
                  )),SizedBox(width: 30),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Clicks(
                      operationColor: Colors.black87,
                      containerColor: Colors.grey.shade400,
                      operation: 'AC'
                  ),
                  Clicks(
                      operationColor: Colors.black87,
                      containerColor: Colors.grey.shade400,
                      operation: '+/-'
                  ),
                  Clicks(
                      operationColor: Colors.black87,
                      containerColor: Colors.grey.shade400,
                      operation: '%'
                  ),
                  Clicks(
                      operationColor: Colors.grey.shade200,
                      containerColor: Colors.orange,
                      operation: '÷'
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Clicks(
                      operationColor: Colors.grey.shade200,
                      containerColor: Colors.grey.shade800,
                      operation: '7'
                  ),
                  Clicks(
                      operationColor: Colors.grey.shade200,
                      containerColor: Colors.grey.shade800,
                      operation: '8'
                  ),
                  Clicks(
                      operationColor: Colors.grey.shade200,
                      containerColor: Colors.grey.shade800,
                      operation: '9'
                  ),
                  Clicks(
                      operationColor: Colors.grey.shade200,
                      containerColor: Colors.orange,
                      operation: 'x'
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Clicks(
                      operationColor: Colors.grey.shade200,
                      containerColor: Colors.grey.shade800,
                      operation: '4'
                  ),
                  Clicks(
                      operationColor: Colors.grey.shade200,
                      containerColor: Colors.grey.shade800,
                      operation: '5'
                  ),
                  Clicks(
                      operationColor: Colors.grey.shade200,
                      containerColor: Colors.grey.shade800,
                      operation: '6'
                  ),
                  Clicks(
                      operationColor: Colors.grey.shade200,
                      containerColor: Colors.orange,
                      operation: '-'
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Clicks(
                      operationColor: Colors.grey.shade200,
                      containerColor: Colors.grey.shade800,
                      operation: '3'
                  ),
                  Clicks(
                      operationColor: Colors.grey.shade200,
                      containerColor: Colors.grey.shade800,
                      operation: '2'
                  ),
                  Clicks(
                      operationColor: Colors.grey.shade200,
                      containerColor: Colors.grey.shade800,
                      operation: '1'
                  ),
                  Clicks(
                      operationColor: Colors.grey.shade200,
                      containerColor: Colors.orange,
                      operation: '+'
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height:80,
                    width: 175,
                    decoration: BoxDecoration(
                      color:Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Center(
                      child: Text('0',style: TextStyle(
                        fontSize: 32,
                        color: Colors.grey.shade200,
                      ),),
                    ),
                  ),

                  Clicks(
                      operationColor: Colors.grey.shade200,
                      containerColor: Colors.grey.shade800,
                      operation: '.'
                  ),
                  Clicks(
                      operationColor: Colors.grey.shade200,
                      containerColor: Colors.orange,
                      operation: '='
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Clicks extends StatelessWidget {
  late Color operationColor;
  late Color containerColor;
  late String operation;
  Clicks(
      {required this.operationColor,
      required this.containerColor,
      required this.operation});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
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
