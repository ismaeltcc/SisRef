import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AboutSisref extends StatefulWidget {
  const AboutSisref({Key? key}) : super(key: key);

  @override
  State<AboutSisref> createState() => _AboutSisrefState();
}

class _AboutSisrefState extends State<AboutSisref> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(45),
        child: AppBar(
          foregroundColor: const Color(0xFF6d6d6d),
          title: Text(
            "SisRu - Sobre",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.black,
              fontSize: width * 0.055,
            ),
          ),
          backgroundColor: const Color(0xFFfafafa),
        ),
      ),
      backgroundColor: Colors.grey.shade50,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 12),
            Image.asset(
              "images/logo.jpg",
              width: width * 0.70,
            ),
            const SizedBox(height: 12),
            Card(
              color: Colors.green.shade100,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        "   O sistema SisRef é um projeto desenvolvido pelo Instituto Federal de Educação, Ciência e Tecnologia do Ceará - Campus Cedro. Está hospedado no subdomínio:",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: width * 0.041,
                          fontStyle: FontStyle.italic,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "ru.cedro.ifce.edu.br",
                        style: TextStyle(
                          fontSize: width * 0.043,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              "1. Pessoas envolvidas",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: width * 0.05,
              ),
            ),
            const SizedBox(height: 12),
            Table(
                // defaultColumnWidth: FixedColumnWidth(150.0),
                border: const TableBorder(
                  top: BorderSide(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 1.0,
                  ),
                  bottom: BorderSide(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 1.0,
                  ),
                  horizontalInside: BorderSide(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 1.0,
                  ),
                  verticalInside: BorderSide(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 1.0,
                  ),
                ),
                children: [
                  _criarLinhaTable("Nome, Função, Descrição, Período",
                      context, FontWeight.w600),
                  _criarLinhaTable(
                      "Pedro Luis Saraiva Barbosa, Professor do IFCE campus Cedro,Coordenador do projeto SisRef, Mai/2019 - Atual",
                      context,
                      FontWeight.w400),
                  _criarLinhaTable(
                      "José Olinda, Professor do IFCE campus Cedro,Colaborador do projeto SisRef, Ago/2019 - Atual",
                      context,
                      FontWeight.w400),
                  _criarLinhaTable(
                      "João Denilson Souza Santos,Aluno,Participou da atualização do sistema desktop para a versão totalmente web, Mai/2020 - Atual",
                      context,
                      FontWeight.w400),
                ]),
            const SizedBox(height: 12),
            Text(
              "2. Marcos do projeto",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: width * 0.05,
              ),
            ),
            const SizedBox(height: 12),
            Table(
                // defaultColumnWidth: FixedColumnWidth(150.0),
                border: const TableBorder(
                  top: BorderSide(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 1.0,
                  ),
                  bottom: BorderSide(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 1.0,
                  ),
                  horizontalInside: BorderSide(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 1.0,
                  ),
                  verticalInside: BorderSide(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 1.0,
                  ),
                ),
                children: [
                  _criarLinhaTable2("Período,Sistema,Descrição", context,
                      FontWeight.w600),
                  _criarLinhaTable2(
                      "Abr/2021, Sistema SisRef , O projeto SisRef é finalizado e implantado no subdomínio (https://ru.cedro.ifce.edu.br)",
                      context,
                      FontWeight.w400),
                  _criarLinhaTable2(
                      "Mai/2020 á Abr/2021,Sistema SisRef, O projeto SisRef foi desenvolvido pelo aluno do curso de Bacharelado em Sistema de Informação do IFCE campus Cedro (João Denilson Souza Santos) e pelo Professor (Pedro Luís Saraiva Barbosa). O projeto surgiu da necessidade de ter o sistema totalmente online. O sistema foi projetado como um serviço (API) e um outro sistema (front) que consome a API",
                      context,
                      FontWeight.w400),
                  _criarLinhaTable2(
                      "Ago/2019,Sistema RU Ticket Online,O projeto RU Ticket Online foi desenvolvido pelo Professor (José Olinda). O RU Ticket Online é um módulo web o qual os estudantes possuem acesso e podem agendar refeições",
                      context,
                      FontWeight.w400),
                  _criarLinhaTable2(
                      "Mai/2019,Sistema RU Desktop,O projeto RU Desktop foi desenvolvido pelo Professor (Professor Pedro Luíz Saraiva Barbosa) utilizando linguagem de programação Java O projeto surgiu após uma reunião com profissionais da Assistência Estudantil diante de uma problemática de desperdícios das refeições",
                      context,
                      FontWeight.w400),
                ]),
            const SizedBox(height: 12),
            Image.asset("images/logo2IFCE.png"),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}

_criarLinhaTable(
    String listaNomes, BuildContext context, FontWeight fontWeight) {
  final width = MediaQuery.of(context).size.width;
  return TableRow(
    children: listaNomes.split(',').map((name) {
      return Container(
        alignment: Alignment.center,
        child: Text(
          name,
          style: TextStyle(fontSize: width * 0.035, fontWeight: fontWeight),
        ),
        padding: EdgeInsets.all(8.0),
      );
    }).toList(),
  );
}

_criarLinhaTable2(
    String listaNomes, BuildContext context, FontWeight fontWeight) {
  final width = MediaQuery.of(context).size.width;
  return TableRow(
    children: listaNomes.split(',').map((name) {
      return Container(
        alignment: Alignment.center,
        child: Text(
          name,
          style: TextStyle(fontSize: width * 0.035, fontWeight: fontWeight),
        ),
        padding: EdgeInsets.all(8.0),
      );
    }).toList(),
  );
}
