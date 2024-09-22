import 'package:flutter/material.dart';

class NumberButtons extends StatelessWidget {
   int value = 0;
  static List<int> clickValue =[];
  List <int> inputtedNum = [];

  NumberButtons({required this.value});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

        print('$value clicked');

        if(value == 0 || value == 1 || value == 2 || value == 3 || value == 4 || value == 5 || value == 6 || value == 7 || value == 8 ||  value == 9){
          inputtedNum.add(value);
        }
        clickValue = inputtedNum;
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
            value.toString(),
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
