import 'package:flutter/material.dart';
import 'package:navigationapp/pages/page_result.dart';
import 'package:navigationapp/widget/alerte.dart';

class PageQuizz extends StatefulWidget {
  const PageQuizz({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<PageQuizz> createState() => _PageQuizzState();
}

class _PageQuizzState extends State<PageQuizz> {
  int _index = 0;
  int _score = 0;
  String _question = "";
  List<String> _questions = [
    "Quelle est la capitale de la France ?",
    "Quelle est la capitale de la Suisse ?",
    "Quelle est la capitale de la Allemagne ?",
    "Quelle est la capitale de la Italie ?",
    "Quelle est la capitale de la Pologne ?",
  ];
  List<bool> _answers = [
    true,
    false,
    true,
    false,
    false,
  ];
  List<String> _imageLink = [
    "",
    "",
    "",
    "",
    "",
    "",
  ];

  void _checkAnswer(bool guess) {
    setState(() {
      if (_answers[_index] == guess) {
        _score++;
        alerte(
          context,
          'OE ',
          'bv le S',
          'DQZDQZD',
        );
      } else {
        alerte(
          context,
          'OH NAN',
          'nullos',
          'OK',
        );
      }
      if (_index + 1 >= _questions.length) {
        alerte(
          context,
          "oeeeeee finitos pipo",
          "ton score bg $_score",
          "OK",
        );
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return PageResult(score: _score);
        }), (Route<dynamic> route) => false);
        return;
      }
      _index++;
      _question = _questions[_index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(_questions[_index],
                  style: TextStyle(fontSize: 30, color: Colors.white)),
              Image.asset("assets/images/quizz.jpg", width: 200, height: 200),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        _checkAnswer(true);
                      },
                      child: Text('vré')),
                  ElevatedButton(
                      onPressed: () {
                        _checkAnswer(false);
                      },
                      child: Text('fo')),
                ],
              )
            ]),
      ),
    );
  }
}
