import 'package:flutter/material.dart';


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
      onTap: () {},
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