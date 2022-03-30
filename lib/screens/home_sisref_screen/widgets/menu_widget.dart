import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../Information_sisref_screen/Information_sisref.dart';
import '../../about_sisref_screen/about_sisref.dart';
import '../../tickets_sisref_screen/tickets_sisref.dart';
import '../home_sisref.dart';

// Menu Sanduiche
class MenuWidget extends StatefulWidget {
  const MenuWidget({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  Future<void> _lauchLink(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: false, forceSafariVC: false);
    } else {
      print('não pode executar o link $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Drawer(
        child: Container(
          color: const Color(0xFF18202b),
          child: ListView(children: <Widget>[
            SizedBox(
              height: 240,
              child: DrawerHeader(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          _lauchLink("https://ifce.edu.br/");
                        });
                      },
                      child: Image.asset(
                        "images/logo_if.png",
                        width: widget.width * 0.54,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 12),
                        const Text(
                          "Olá, ISMAEL CUSTÓDIO SANTANA. Tudo bem?",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: 12),
                        Container(
                          decoration: const BoxDecoration(
                            border: BorderDirectional(
                                top: BorderSide(
                                    color: Color(0xFF3f4955), width: 1)),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          
                          children: const [
                            Icon(
                              Icons.home,
                              color: Color(0xFFb9bcc5),
                            ),
                            SizedBox(width: 12),
                            Text(
                              "SisRef | Campus-CEDRO",
                              style: TextStyle(
                                color: Color(0xFFb9bcc5),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                decoration: const BoxDecoration(
                  border: BorderDirectional(
                      bottom: BorderSide(color: Color(0xFF3f4955), width: 1)),
                  color: Color(0xFF232f3f),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 17.0,
                top: 12,
                bottom: 12,
              ),
              child: Text(
                "Menu",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 17.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeSisref()),
                      );
                    },
                    child: Row(children: const [
                      Icon(
                        Icons.home,
                        color: Color(0xFFb9bcc5),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          'Home',
                          style: TextStyle(
                            color: Color(0xFFb9bcc5),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ]),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const InformationSisref()),
                      );
                    },
                    child: Row(children: const [
                      Icon(
                        BootstrapIcons.mortarboard_fill,
                        color: Color(0xFFb9bcc5),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          'Informações acadêmicas',
                          style: TextStyle(
                            color: Color(0xFFb9bcc5),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ]),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TicketsSisref()),
                      );
                    },
                    child: Row(children: const [
                      Icon(
                        BootstrapIcons.ticket_perforated_fill,
                        color: Color(0xFFb9bcc5),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          'Tickets',
                          style: TextStyle(
                            color: Color(0xFFb9bcc5),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ]),
                  ),
                  InkWell(
                    onTap: (){
                       Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AboutSisref()),
                      );
                    },
                    child: Row(children: const [
                      Icon(
                        BootstrapIcons.box_arrow_up_right,
                        color: Color(0xFFb9bcc5),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text('Sobre',
                            style: TextStyle(
                              color: Color(0xFFb9bcc5),
                              fontSize: 16,
                            )),
                      )
                    ]),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Container(
              decoration: const BoxDecoration(
                border: BorderDirectional(
                    top: BorderSide(color: Color(0xFF3f4955), width: 1)),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
