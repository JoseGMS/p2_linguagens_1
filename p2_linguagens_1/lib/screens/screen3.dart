import 'package:flutter/material.dart';
import 'package:p2_linguagens_1/models/futebolmodel.dart';

class screen3 extends StatelessWidget {
  final futModel ProximaPartida;

  const screen3({Key key, this.ProximaPartida}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Proximo jogo"),),
      body: Center(
        child: Text("Mandante: "+ProximaPartida.copaDoBrasil[0].timeMandante.nomePopular+
          "\n"+"Vistante: "+ProximaPartida.copaDoBrasil[0].timeVisitante.nomePopular+
          "\n"+"Local: "+ProximaPartida.copaDoBrasil[0].estadio.nomePopular+
          "\n"+"Dia: "+ProximaPartida.copaDoBrasil[0].dataRealizacao+
          "\n"+"Hora: "+ProximaPartida.copaDoBrasil[0].horaRealizacao,style: TextStyle(fontSize: 30,),),
      )
    );
  }
}
