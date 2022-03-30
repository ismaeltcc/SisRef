import 'package:flutter/material.dart';

class LineHorizontalWidget extends StatelessWidget {
  const LineHorizontalWidget({
    Key? key,
    required this.color,
    required this.height,
    required this.width,
  }) : super(key: key);

  final Color color;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color, //Colors.grey,
      height: height,//0.2,
      width: width,//97,
    );
  }
}
