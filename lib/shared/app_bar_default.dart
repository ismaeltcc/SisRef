import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';

class AppBarDefault extends StatelessWidget {
  const AppBarDefault({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Center(
                          child: Text(
                        "Deseja Sair ?",
                        style: TextStyle(fontSize: width * 0.07),
                      )),
                      actionsAlignment: MainAxisAlignment.center,
                      actions: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                            ),
                            onPressed: () {},
                            child: Text(
                              "Sim",
                              style: TextStyle(fontSize: width * 0.05),
                            )),
                        SizedBox(width: width * 0.03),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Não",
                              style: TextStyle(fontSize: width * 0.05),
                            ))
                      ],
                    );
                  });
            },
            icon: const Icon(BootstrapIcons.box_arrow_in_right))
      ],
      backgroundColor: const Color(0xFF4cb050),
    );
  }
}
