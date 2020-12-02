import 'package:flutter/material.dart';
import 'package:p2_linguagens_1/models/futebolmodel.dart';
import 'package:p2_linguagens_1/screens/screen3.dart';

class screen2 extends StatelessWidget {
  final String nomeTime;
  final String urlEscudo;
  final futModel Time;

  const screen2({Key key, this.nomeTime, this.urlEscudo, this.Time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Seu time"),),
      body:Center( child: Column(children: <Widget>[
        Image.network(urlEscudo),
        Image.network("https://upload.wikimedia.org/wikipedia/pt/5/50/Santo_Andre_escudo.png"),
        Text(nomeTime,
          style: TextStyle(fontSize: 50,),),
        Center(
          child: MaterialButton(
            child: new Text("Clique para ver proximos jogos!",style: TextStyle(fontSize: 30),),
            onPressed: () async{
              Navigator.push(context, MaterialPageRoute(builder: (context) => screen3(ProximaPartida: Time,)));
            },
            color: Colors.blueAccent,
            textColor: Colors.white,height: 150,
          )),]
    )));
}
}
