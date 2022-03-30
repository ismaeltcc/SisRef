import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../used_screen/widgets/meal_label_card_widget.dart';

class NotUsed extends StatefulWidget {
  const NotUsed({ Key? key }) : super(key: key);

  @override
  State<NotUsed> createState() => _NotUsedState();
}

class _NotUsedState extends State<NotUsed> {

 Future<void> _lauchLink(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: false, forceSafariVC: false);
    } else {
      print('nao pode executar o link $url');
    }
  }

  @override
  Widget build(BuildContext context) {

  final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        SizedBox(
          width: width * 0.92,
          child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                  padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 37.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: width * 0.172,
                            height: width * 0.15,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    "Data",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: width * 0.040,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "Cardápio",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: width * 0.040,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "-",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: width * 0.040,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      
                    ),
                    const MealLabelCardWidget(
                      date: "24/03/2022",
                      time: "Lanche da tarde",
                      titleMeal: "Refeição:",
                      descriptionMeal: "Mungunzá salgado",
                      statusMeal: "Não utilizado",
                      statusColor: Color(0xFFf5a623),
                    ),
                     const MealLabelCardWidget(
                      date: "24/03/2022",
                      time: "Almoço",
                      titleMeal: "Refeição:",
                      descriptionMeal: "Picadinho de carne ou Filé de Peixe, Arroz branco, Feijão carioca com jerimum, Macarrão espaquete refogado, Sl: Batata e cenoura / Alface, beterraba e ervilha, Sob: Maçã",
                      statusMeal: "Não utilizado",
                      statusColor: Color(0xFFf5a623),
                    ),
                     const MealLabelCardWidget(
                      date: "24/03/2022",
                      time: "Lanche da Manhã",
                      titleMeal: "Refeição:",
                      descriptionMeal: "Mungunzá salgado",
                      statusMeal: "Não utilizado",
                      statusColor: Color(0xFFf5a623),
                    ),
                      const MealLabelCardWidget(
                      date: "23/03/2022",
                      time: "Lanche da tarde",
                      titleMeal: "Refeição:",
                      descriptionMeal: "Cuscuz com carne e queijo + Suco de caju",
                      statusMeal: "Justificado",
                      statusColor: Color(0xFF009be5),
                    ),
                     const MealLabelCardWidget(
                      date: "23/03/2022",
                      time: "Lanche da tarde",
                      titleMeal: "Refeição:",
                      descriptionMeal: "Mungunzá salgado",
                      statusMeal: "Justificado",
                      statusColor: Color(0xFF009be5),
                    ),
                     const SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: [
                            const Text("1-5 of 3"),
                            SizedBox(width: width * 0.07),
                            Icon(
                              Icons.arrow_back_ios,
                              size: width * 0.045,
                              color: Colors.grey,
                            ),
                            SizedBox(width: width * 0.07),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: width * 0.045,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                    ])))),
                      SizedBox(height: width * 0.02),
            Image.asset(
              "images/logos.jpg",
              fit: BoxFit.cover,
              width: width * 0.70,
            ),
            SizedBox(height: width * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "©",
                  style: TextStyle(
                    fontSize: width * 0.043,
                  ),
                ),
                SizedBox(width: width * 0.01),
                InkWell(
                  onTap: () {
                    setState(() {
                      _lauchLink("https://ifce.edu.br/");
                    });
                  },
                  child: Text(
                    "Instituto Federal do Ceará.",
                    style: TextStyle(
                      fontSize: width * 0.043,
                      color: Colors.blue,
                    ),
                  ),
                ),
                SizedBox(width: width * 0.01),
                Text(
                  "2022",
                  style: TextStyle(
                    fontSize: width * 0.043,
                  ),
                ),
              ],
            ),
            SizedBox(height: width * 0.09),
      ],
    );
  }
}