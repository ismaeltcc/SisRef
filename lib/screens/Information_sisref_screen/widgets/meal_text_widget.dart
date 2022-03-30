import 'package:flutter/material.dart';

import 'line_horizontal_widget.dart';

class MealTextWidget extends StatelessWidget {
  const MealTextWidget({
    Key? key,
    required this.width,
    this.text,
  }) : super(key: key);

  final double width;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * 0.227,
      height: width * 0.22,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              text!,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: width * 0.035,
              ),
            ),
          ), 
        ],
      ),
    );
  }
}
