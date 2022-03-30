import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:sisref/screens/tickets_sisref_screen/used_screen/used.dart';
import 'package:sisref/shared/app_bar_default.dart';


import '../Information_sisref_screen/widgets/line_vertical_widget.dart';
import '../home_sisref_screen/widgets/menu_widget.dart';
import 'canceled_screen/canceled.dart';
import 'not_used_screen/not_used.dart';
import 'to_use_screen/to_use.dart';
import 'widgets/text_select_Items_widget.dart';

class TicketsSisref extends StatefulWidget {
  const TicketsSisref({Key? key}) : super(key: key);

  @override
  State<TicketsSisref> createState() => _TicketsSisrefState();
}

class _TicketsSisrefState extends State<TicketsSisref> {
  List<Widget> isSelected = [
    const ToUse(),
    const Used(),
    const NotUsed(),
    const Canceled(),
  ];

  void _setIndex(int selectedIndex) {
    setState(() {
      tabIndex = selectedIndex;
    });
  }

  int tabIndex = 0;

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
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
           top: 12.0,
            ),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                  child: InkWell(
                      onTap: () {
                        _setIndex(0);
                      },
                      child: Container(
                          color: tabIndex != 0
                              ? const Color(0xFF009be5)
                              : const Color(0xFF006db2),
                          child: const TextSelectItems(text: "A ser usados"))),
                ),
                LineVerticalWidget(
                  color: const Color(0xFF006db2),
                  sizeWidth: width * 0.006,
                ),
                InkWell(
                    onTap: () {
                      _setIndex(1);
                    },
                    child: Container(
                        color: tabIndex != 1
                            ? const Color(0xFF009be5)
                            : const Color(0xFF006db2),
                        child: const TextSelectItems(text: "Usados"))),
                LineVerticalWidget(
                  color: const Color(0xFF006db2),
                  sizeWidth: width * 0.006,
                ),
                InkWell(
                    onTap: () {
                      _setIndex(2);
                    },
                    child: Container(
                        color: tabIndex != 2
                            ? const Color(0xFF009be5)
                            : const Color(0xFF006db2),
                        child: const TextSelectItems(text: "Não usados"))),
                LineVerticalWidget(
                  color: const Color(0xFF006db2),
                  sizeWidth: width * 0.006,
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  child: InkWell(
                      onTap: () {
                        _setIndex(3);
                      },
                      child: Container(
                          color: tabIndex != 3
                              ? const Color(0xFF009be5)
                              : const Color(0xFF006db2),
                          child: const TextSelectItems(text: "Cancelados"))),
                ),
              ]),
              const SizedBox(height: 12),
              isSelected[tabIndex],
            ],
          ),
        ),
      ),
    );
  }
}
