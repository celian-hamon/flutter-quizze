import 'package:flutter/material.dart';
import 'package:navigationapp/pages/page_quizz.dart';
import 'package:share_plus/share_plus.dart';

class PageResult extends StatelessWidget {
  const PageResult({Key? key, required this.score}) : super(key: key);
  final int score;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultat'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          Text('Vous avez $score bonnes réponses', style: TextStyle(fontSize: 30, color: Colors.white,)),
          Row(
            children: [
              ElevatedButton(
                child: Text('Recommencer'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PageQuizz(title: 'Quizz de pates')));
                },
              ),
              ElevatedButton(onPressed: (){
                Share.share('wow jai fé $score a quizz pate 😎', subject: 'shishaaaa');
              }, child: Text('Tweet')),
            ],
          ),
        ],
      ),
    );
  }
}