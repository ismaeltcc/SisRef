// biblioteca do Material
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sisref/screens/login_sisref_screen/login_sisref.dart';


// main class principal do app onde inicializa o programa
void main() {
  runApp(const MyApp());
}

// Widget sem estado porque é um StatelessWidget não armazena valor.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Sisref",
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("pt", "BR")
      ],
      /// tirar o banner
      debugShowCheckedModeBanner: false,

      /// chamar tela inicial
      home: LoginSisref(),
    );
  }
}
