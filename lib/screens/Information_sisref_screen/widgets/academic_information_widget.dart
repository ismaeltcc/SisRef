import 'package:flutter/material.dart';

import '../../home_sisref_screen/home_sisref.dart';
import 'text_field_default.dart';

class AcademicInformationWidget extends StatelessWidget {
  const AcademicInformationWidget({
    Key? key,
    required this.width,
    required this.controller,
  }) : super(key: key);

  final double width;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 14.0,
            right: 14.0,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 7),
            InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeSisref()),
                  );
                },
                child: const Icon(Icons.arrow_back)),
            const SizedBox(height: 12),
            Text(
              "Informações Acadêmicas".toUpperCase(),
              style: TextStyle(
                fontSize: width * 0.068,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 12),
            TextFieldDefault(
              hintText: '151',
              labelText: "PIN / RU Code",
              controller: controller,
              //enabled: false,
            ),
            TextFieldDefault(
              hintText: 'ISMAEL CUSTÓDIO SANTANA',
              labelText: "Nome",
              controller: controller,
              //enabled: false,
            ),
            TextFieldDefault(
              hintText: '20191031020193',
              labelText: "Matricula",
              controller: controller,
              //enabled: false,
            ),
            TextFieldDefault(
              hintText: 'ismaelsantana006@gmail.com',
              labelText: "Email",
              controller: controller,
              //enabled: false,
            ),
            TextFieldDefault(
              hintText: '30/04/2022',
              labelText: "Data de validade",
              controller: controller,
              //enabled: false,
            ),
            TextFieldDefault(
              hintText: 'Integrado em Informática',
              labelText: "Curso",
              controller: controller,
              //enabled: false,
            ),
            const SizedBox(height: 12),
          ]),
        ),
      ),
    );
  }
}
