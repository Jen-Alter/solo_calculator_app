import 'package:flutter/material.dart';

class Superscript extends StatelessWidget {
  final String? main;
  final String? secondary;
  const Superscript({super.key, this.main,  this.secondary});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
          width: 50,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  main ?? "",
                  style: TextStyle(color: Colors.yellow.shade600, fontSize: 8)
                  ),
                Text(
                  secondary ?? "",
                  style: TextStyle(color: Colors.purple.shade600, fontSize: 8)
                )
              ]
            ),
          ),
    );
  }
}