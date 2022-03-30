import 'package:flutter/material.dart';

class MealTextCardWidget extends StatefulWidget {
  const MealTextCardWidget({
    Key? key,
    required this.date,
    required this.time,
    required this.titleMeal,
    required this.descriptionMeal,
  }) : super(key: key);

  final String date;
  final String time;
  final String titleMeal;
  final String descriptionMeal;

  @override
  State<MealTextCardWidget> createState() => _MealTextCardWidgetState();
}

class _MealTextCardWidgetState extends State<MealTextCardWidget> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Stack(children: [
          Positioned(
            left: 5,
            top: 5,
            right: 5,
            child: Container(
              color: Colors.grey.shade200,
              height: 100,
              width: width * 0.85,
            ),
          ),
          Card(
            shape: Border(
                top: BorderSide(
                    color: Colors.grey.shade300,
                    width: 1,
                    style: BorderStyle.solid)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: width * 0.300,
                  height: width * 0.10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          widget.date,//"24/03/2022",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: width * 0.040,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: width * 0.227,
                  height: width * 0.22,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          widget.time,//"Lanche da Tarde",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: width * 0.040,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.cancel_outlined,
                  color: Colors.red,
                  size: width * 0.09,
                ),
                const SizedBox(width: 0.227),
              ],
            ),
          ),
        ]),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Container(
            color: Colors.grey.shade200,
            width: width * 0.85,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
                bottom: 8.0,
                left: 12.0,
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.titleMeal,//"Refeição:",
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      widget.descriptionMeal,//"Mungunzá salgado",
                      style: const TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ],
    );
  }
}
