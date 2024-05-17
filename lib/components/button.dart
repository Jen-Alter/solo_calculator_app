import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;
  final void Function()? onTap;
  const CalcButton({super.key, required this.text, required this.bgColor, required this.textColor, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          InkWell(
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.only(left: 1.0, right: 1.0, bottom: 2.0),
              child: ClipRRect(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8), bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
              child: Container(
                height: 40,
                width: 60,
                color: bgColor,
                child: Center(
                  child: Text(text, style: TextStyle(color: textColor))
                )
              )
                      ),
            ),
          )
        ],
      );
  }
}