import 'package:flutter/material.dart';

class LineVerticalWidget extends StatelessWidget {
  const LineVerticalWidget({
    Key? key,
    required this.color,
    required this.sizeWidth,
  }) : super(key: key);

  final Color color;
  final double sizeWidth;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      color: color,
      height: width * 0.22, //85,
      width: sizeWidth,
    );
  }
}
