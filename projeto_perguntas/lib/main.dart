import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  int perguntaSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
      'Qual é o seu time?'
    ];

    void responder() {
      setState(() {
        perguntaSelecionada++;
      });
      print('Pergunta respondida $perguntaSelecionada');
    }

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
            centerTitle: true,
          ),
          body: Column(
            children: <Widget>[
              Text(perguntas[perguntaSelecionada]),
              RaisedButton(
                child: Text('Resposta 1'),
                onPressed: responder,
              ),
              RaisedButton(
                child: Text('Resposta 2'),
                onPressed: responder,
              ),
              RaisedButton(
                child: Text('Resposta 3'),
                onPressed: responder,
              )
            ],
          )),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}