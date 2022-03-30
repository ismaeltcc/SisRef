import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';

// Quadro de Avisos
class BillboardCardWidget extends StatelessWidget {
  const BillboardCardWidget({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 18.0,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 12),
          Text(
            "Quadro de Avisos",
            style: TextStyle(
              fontSize: width * 0.07,
              fontWeight: FontWeight.w600,
            ),
          ),
          Image.asset("images/bom_dia.jpeg",
          width: width * 0.50,
          ),
          const SizedBox(height: 20),
          Text(
            "Bom dia !",
            style: TextStyle(
              fontSize: width * 0.042, //fontSize: 15,
              fontWeight: FontWeight.normal,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              children: [
                Text(
                  "Código do Estudante:",
                  style: TextStyle(
                    fontSize: width * 0.04, //fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: const Color(0xFF009be5))),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      children: [
                        const Icon(
                          BootstrapIcons.ticket_perforated_fill,
                          color: Color(0xFF009be5),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "151",
                          style: TextStyle(
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF009be5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: 'Sua situação está regular, e seu cadastro está',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: width * 0.04,
                          color: Colors.black),
                      children: <InlineSpan>[
                        TextSpan(
                          text: ' ativo até:',
                          style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ])),
                ),
              ),
            ],
          ),
          Text(
            "30/03/2022",
            style:
                TextStyle(fontSize: width * 0.04, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 40)
        ]),
      ),
    );
  }
}
