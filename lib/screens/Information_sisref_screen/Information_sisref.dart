import 'package:flutter/material.dart';
import 'package:sisref/screens/Information_sisref_screen/widgets/line_horizontal_widget.dart';
import 'package:sisref/screens/Information_sisref_screen/widgets/meal_row_widget.dart';
import 'package:sisref/shared/app_bar_default.dart';
import 'package:url_launcher/url_launcher.dart';

import '../home_sisref_screen/widgets/menu_widget.dart';
import 'widgets/academic_information_widget.dart';

class InformationSisref extends StatefulWidget {
  const InformationSisref({Key? key}) : super(key: key);

  @override
  State<InformationSisref> createState() => _InformationSisrefState();
}

class _InformationSisrefState extends State<InformationSisref> {
  Future<void> _lauchLink(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: false, forceSafariVC: false);
    } else {
      print('nao pode executar o link $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFeaeff2),

      /// Menu Sofonado Drawer
      drawer: MenuWidget(width: width),

      /// Barra de Cima
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(45) ,
          child: AppBarDefault(width: width)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: width * 0.01),
            AcademicInformationWidget(width: width, controller: controller),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 09.0,
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Stack(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MealRowWidget(
                            textMeal1: "Refeição",
                            textMeal2: "Lanche da tarde",
                            textMeal3: "Lanche da manhã",
                            textMeal4: "Almoço",
                            width: width,
                            lineColor1: Colors.grey[200],
                            lineColor2: Colors.grey[200],
                            lineColor3: Colors.grey[200],
                          ),
                          const LineHorizontalWidget(
                            color: Colors.grey,
                            height: 0.2,
                            width: 97,
                          ),
                          MealRowWidget(
                            textMeal1: "Segunda",
                            textMeal2: "✓",
                            textMeal3: "✓",
                            textMeal4: "✓",
                            width: width,
                            lineColor1: Colors.green,
                            lineColor2: Colors.green,
                            lineColor3: Colors.green,
                          ),
                          const LineHorizontalWidget(
                            color: Colors.grey,
                            height: 0.2,
                            width: 97,
                          ),
                          MealRowWidget(
                            textMeal1: "Terça",
                            textMeal2: "✓",
                            textMeal3: "✓",
                            textMeal4: "✓",
                            width: width,
                            lineColor1: Colors.green,
                            lineColor2: Colors.green,
                            lineColor3: Colors.green,
                          ),
                          const LineHorizontalWidget(
                            color: Colors.grey,
                            height: 0.2,
                            width: 97,
                          ),
                          MealRowWidget(
                            textMeal1: "Quarta",
                            textMeal2: "✓",
                            textMeal3: "✓",
                            textMeal4: "✓",
                            width: width,
                            lineColor1: Colors.green,
                            lineColor2: Colors.green,
                            lineColor3: Colors.green,
                          ),
                          const LineHorizontalWidget(
                            color: Colors.grey,
                            height: 0.2,
                            width: 97,
                          ),
                          MealRowWidget(
                            textMeal1: "Quinta",
                            textMeal2: "✓",
                            textMeal3: "✓",
                            textMeal4: "✓",
                            width: width,
                            lineColor1: Colors.green,
                            lineColor2: Colors.green,
                            lineColor3: Colors.green,
                          ),
                          const LineHorizontalWidget(
                            color: Colors.grey,
                            height: 0.2,
                            width: 97,
                          ),
                          MealRowWidget(
                            textMeal1: "Sexta",
                            textMeal2: "✓",
                            textMeal3: "✓",
                            textMeal4: "✓",
                            width: width,
                            lineColor1: Colors.green,
                            lineColor2: Colors.green,
                            lineColor3: Colors.green,
                          ),
                          const LineHorizontalWidget(
                            color: Colors.grey,
                            height: 0.2,
                            width: 97,
                          ),
                          MealRowWidget(
                            textMeal1: "Sábado",
                            textMeal2: "✓",
                            textMeal3: "✓",
                            textMeal4: "✓",
                            width: width,
                            lineColor1: Colors.green,
                            lineColor2: Colors.green,
                            lineColor3: Colors.green,
                          ),
                        ]),
                  ),
                ]),
              ),
            ),
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
        ),
      ),
    );
  }
}
