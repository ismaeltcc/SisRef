import 'package:flutter/material.dart';

import 'today_menu_text_widget.dart';

// Cardapio do dia
class TodayMenuWidget extends StatelessWidget {
  const TodayMenuWidget({
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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(height: 12),
              Text(
                "Cardápio do Dia 24/03/2022",
                style: TextStyle(
                    fontSize: width * 0.06, fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.grey,
                          width: width * 0.79,
                          height: 0.4,
                        ),
                        const SizedBox(height: 5),
                        TodayMenuTextWidget(
                            width: width,
                            textTodayMenu: "Refeição: Lanche da manhã"),
                        TodayMenuTextWidget(
                            width: width,
                            textTodayMenu:
                                "Descrição: Mungunzá salgado"),
                        TodayMenuTextWidget(
                            width: width,
                            textTodayMenu: "Horário de inicio: 09:20:00"),
                        TodayMenuTextWidget(
                            width: width,
                            textTodayMenu: "Horário de fim: 09:40:00"),
                        const SizedBox(height: 5),
                        Container(
                          color: Colors.grey,
                          width: width * 0.79,
                          height: 01,
                        ),
                        const SizedBox(height: 5),
                        TodayMenuTextWidget(
                            width: width,
                            textTodayMenu: "Refeição: Almoço"),
                        TodayMenuTextWidget(
                            width: width,
                            textTodayMenu:
                                "Descrição: Picadinho de carne ou Filé de Peixe, Arroz branco, Feijão carioca com jerimum, Macarrão espaquete refogado, Sl: Batata e cenoura / Alface, beterraba e evilha, Sob: Maçã"),
                        TodayMenuTextWidget(
                            width: width,
                            textTodayMenu: "Horário de inicio: 11:00:00"),
                        TodayMenuTextWidget(
                            width: width,
                            textTodayMenu: "Horário de fim: 13:00:00"),
                        const SizedBox(height: 5),
                        Container(
                          color: Colors.grey,
                          width: width * 0.79,
                          height: 01,
                        ),
                         const SizedBox(height: 5),
                        TodayMenuTextWidget(
                            width: width,
                            textTodayMenu: "Refeição: Lanche da tarde"),
                        TodayMenuTextWidget(
                            width: width,
                            textTodayMenu:
                                "Descrição: Mungunzá salgado"),
                        TodayMenuTextWidget(
                            width: width,
                            textTodayMenu: "Horário de inicio: 14:50:00"),
                        TodayMenuTextWidget(
                            width: width,
                            textTodayMenu: "Horário de fim: 15:35:00"),
                        const SizedBox(height: 5),
                        Container(
                          color: Colors.grey,
                          width: width * 0.79,
                          height: 01,
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ])));
  }
}
