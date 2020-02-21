import 'package:flutter/material.dart';
import 'package:projeto_perguntas/answer.dart';

import './question.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  int _perguntaSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual é a sua cor favorita ?',
        'respostas': ['Preto', 'Vermelho', 'Branco', 'Verde']
      },
      {
        'texto': 'Qual é o seu animal favorito ?',
        'respostas': ['Cachorro', 'Gato', 'Coelho', 'Macaco']
      }
    ];

    void _responder() {
      setState(() {
        _perguntaSelecionada++;
      });
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Question(perguntas[_perguntaSelecionada]['texto']),
            Answer('Resposta 1', _responder),
            Answer('Resposta 2', _responder),
            Answer('Resposta 3', _responder),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
