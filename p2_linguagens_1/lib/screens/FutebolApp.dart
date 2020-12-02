
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:p2_linguagens_1/models/api_futebol.dart';
import 'package:http/http.dart' as http;
import 'package:p2_linguagens_1/models/futebolmodel.dart';
import 'package:p2_linguagens_1/screens/screen2.dart';


class FutebolApp extends StatefulWidget {
  @override
  _FutebolAppState createState() => _FutebolAppState();
}

class _FutebolAppState extends State<FutebolApp> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(),
      body:
      Container(child: Center(

      child: MaterialButton(
      child: new Text("Clique aqui para iniciar!",style: TextStyle(fontSize: 30),),
      onPressed: () async{
        var _requisicao = NetworkHelper(url:"https://api.api-futebol.com.br/v1/times/57/partidas/proximas");
        var _resultado = futModel.fromJson(await _requisicao.getData());
        print(_resultado.copaDoBrasil[0].timeMandante.escudo);
        Navigator.push(context, MaterialPageRoute(builder: (context) => screen2(nomeTime: _resultado.copaDoBrasil[0].timeMandante.nomePopular, urlEscudo: _resultado.copaDoBrasil[0].timeMandante.escudo,Time: _resultado)));
        },
        color: Colors.blueAccent,
        textColor: Colors.white,height: 150,minWidth: 400,
                    ),
    )));
  }
}