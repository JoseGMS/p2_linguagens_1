//José Guilherme Martins dos Santos - 18.00135-0
// Durante o processo tive problemas com a utilização da API, a ideia do aplicativo era englobar os 4 maior times de São Paulo, e dar a opção do usuario
// ver quais serão os proximos jogos, porém o recurso oficial da api, o live, não me da permissão para diversas funções relacionadas as partidas.
// Modelei então a partir da Key de test da API, porém ela sempre usa Santo Andre vs Criciuma, que é uma partida hipotetica, e não dando
// acesso a outras partidas, outro problema está na screen2, a url da imagem do escudo não estava aparecendo, então recorri a outra
// imagem da internet.


import 'package:flutter/material.dart';
import 'package:p2_linguagens_1/screens/FutebolApp.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FutebolApp(),
    );
  }
}



