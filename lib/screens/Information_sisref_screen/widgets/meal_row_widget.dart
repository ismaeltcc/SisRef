import 'package:flutter/material.dart';
import 'line_vertical_widget.dart';
import 'meal_text_widget.dart';

class MealRowWidget extends StatelessWidget {
  const MealRowWidget({
    Key? key,
    required this.width,
    required this.lineColor1,
    required this.lineColor2,
    required this.lineColor3,
    required this.textMeal1,
    this.textMeal2,
    this.textMeal3,
    this.textMeal4,
  }) : super(key: key);

  final double width;
  final Color? lineColor1;
  final Color? lineColor2;
  final Color? lineColor3;
  final String textMeal1;
  final String? textMeal2;
  final String? textMeal3;
  final String? textMeal4;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        MealTextWidget(width: width, text: textMeal1),
       LineVerticalWidget(color: Colors.grey, sizeWidth: width * 0.001),
        Row(
          children: [
            Container(
                color: lineColor1,
                child: MealTextWidget(
                  width: width,
                  text: textMeal2,
                )),   
            LineVerticalWidget(color: Colors.grey, sizeWidth: width * 0.001),
            Container(
                color: lineColor2,
                child: MealTextWidget(
                  width: width,
                  text: textMeal3,
                )),
           LineVerticalWidget(color: Colors.grey, sizeWidth:  width * 0.001),
            Container(
                color: lineColor3,
                child: MealTextWidget(
                  width: width,
                  text: textMeal4,
                )),
          ],
        ),
      ],
    );
  }
}
