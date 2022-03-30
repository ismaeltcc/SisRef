import 'package:flutter/material.dart';

import '../home_sisref_screen/home_sisref.dart';

/// Tela Login com estado StatefulWidget armazena valor.
class LoginSisref extends StatefulWidget {
  const LoginSisref({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginSisref> createState() => _LoginSisrefState();
}

class _LoginSisrefState extends State<LoginSisref> {
  /// boleano ação do Botão seleção lembre-me
  /// Marcar ou desmarcar o botão
  bool isChecked = false;

  /// boleano ação do Botão seleção lembre-me
  /// Marcar ou desmarcar o botão
  Color getColor(Set<MaterialState> states) {
    return const Color(0xFF4cb050);
  }

  @override
  Widget build(BuildContext context) {
    /// MediaQuery Responsividade
    final width = MediaQuery.of(context).size.width;

    return Scaffold(

        /// AppBar Barra de cima do App.
        appBar: PreferredSize(
        preferredSize: const Size.fromHeight(45) ,
        child: AppBar(
            backgroundColor: const Color(0xFF4cb050),
          ),
        ),

        /// Deixar tela rolavel
        body: SingleChildScrollView(
          /// coluna do projeto
          child: Column(
            children: [
              const SizedBox(height: 60),

              /// Centraliza Widget
              Center(
                /// chamar imagem
                child: Image.asset(
                  'images/logo.jpg',

                  /// largura ou tamanho
                  width: width * 0.6,
                ),
              ),

              /// Padding symmetric, only, all,
              /// Padding symmetric horizontal almenta ou diminui os lados dos componentes,
              /// Padding symmetric vertical almenta ou diminui em cima e em baixo dos componentes,
              /// Padding only almenta ou diminui em cima ou em baixo ou esquerda ou direita,
              /// Padding all almenta ou diminui todos os lados ao mesmo tempo.
              /// caixa de texto email
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 14),

              /// caixa de texto Senha
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Senha',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              /// Espaço na Lateral esquerda left 8.0,
              /// Espaço de dentro para fora ou de fora para dentro.
              Padding(
                padding: const EdgeInsets.only(left: 8.0),

                /// linha do app
                child: Row(children: [
                  /// botão de seleção lembre-me
                  Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      }),

                  /// Widget de texto
                  Text(
                    "Lembre-me",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: width * 0.04,
                        color: Colors.grey[700]),
                  ),
                ]),
              ),

              /// Serve para ter expaçamento height altura width largura
              const SizedBox(height: 14),

              /// Deixa tudo Clicavel, imagem, texto, conteiner.
              InkWell(
                hoverColor: Colors.transparent,
                onTap: () {
                  /// InkWell serve para deixar um componente clicavel
                  /// Navigator serve para ir para outra tela
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeSisref()),
                  );
                },

                /// Aredondar os lados de uma imagem ou conteiner.
                child: ClipRRect(
                  /// Aredondar os lados de uma imagem ou conteiner. circular
                  borderRadius: BorderRadius.circular(5),

                  /// botão entrar Conteiner
                  child: Container(

                      /// Expaçamento height altura width largura
                      width: width * 0.9,
                      height: width * 0.09,

                      /// cor do container
                      color: Colors.grey[300],
                      child: Center(
                        /// Texto do Container
                        child: Text(
                          "ENTRAR",
                          style: TextStyle(

                              /// Dizer o tanto do Negrito
                              fontWeight: FontWeight.w500,

                              /// Tamanho da fonte
                              fontSize: width * 0.04,

                              /// cor da fonte
                              color: Colors.grey[700]),
                        ),
                      )),
                ),
              ),
              const SizedBox(height: 12),
              Row(children: [
                Padding(
                    padding: const EdgeInsets.only(
                      left: 22,
                    ),
                    child: Text(
                      "Esqueceu sua senha?",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: width * 0.04,
                          color: Colors.grey[700]),
                    )),
                const SizedBox(width: 5),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Redefina aqui.",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: width * 0.04,
                        color: Colors.green),
                  ),
                ),
              ]),
            ],
          ),
        ));
  }
}
