import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sisref/shared/app_bar_default.dart';
import 'package:url_launcher/url_launcher.dart';
import 'widgets/billboard_card_widget.dart';
import 'widgets/meal_list_card_widget.dart';
import 'widgets/menu_widget.dart';
import 'widgets/today_menu_widget.dart';

// Tela Inicial
class HomeSisref extends StatefulWidget {
  const HomeSisref({Key? key}) : super(key: key);

  @override
  State<HomeSisref> createState() => _HomeSisrefState();
}

class _HomeSisrefState extends State<HomeSisref> {
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

    return Scaffold(
    backgroundColor: const Color(0xFFeaeff2),
    
    /// Menu Sofonado Drawer
    drawer: MenuWidget(width: width),
    
    /// Barra de Cima
    appBar: PreferredSize(
      preferredSize: const Size.fromHeight(45) ,
      child: AppBarDefault(width: width)),
    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(children: [
          SizedBox(height: width * 0.01),
          BillboardCardWidget(width: width),
          SizedBox(height: width * 0.01),
          MealListCardWidget(width: width),
          SizedBox(height: width * 0.01),
          TodayMenuWidget(width: width),
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
        ]),
      ),
    ),
    );
  }
}

