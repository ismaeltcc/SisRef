import 'package:flutter/material.dart';

// Textos Cardapio do dia
class TodayMenuTextWidget extends StatelessWidget {
  const TodayMenuTextWidget({
    Key? key,
    required this.width,
    required this.textTodayMenu,
  }) : super(key: key);

  final double width;
  final String textTodayMenu;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * 0.74,
      child: Text(
        textTodayMenu,
        style: TextStyle(
          fontSize: width * 0.033,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
