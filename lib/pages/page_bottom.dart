import 'package:flutter/material.dart';
import './page_quizz.dart';
import './page_snack.dart';

class PageBottom extends StatelessWidget {
  const PageBottom({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Quizz de pates', style: TextStyle(fontSize: 30, color: Colors.white)),
            Image.asset("assets/images/intro.jpeg", width: 200, height: 200),
            ElevatedButton(
              child: Text('Start quizz'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PageQuizz(title: 'Quizz de pates')));
              },
            ),
          ],),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 30, 30, 30), // Fixed
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.question_answer), label: "Quizz"),
          BottomNavigationBarItem(icon: Icon(Icons.tapas_outlined), label: "Snack"),
        ],
        onTap: (int index) {
          switch (index) {
            case 0:
              break;
            case 1:
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return PageSnack(title: "Snack");
              }));
              break;
          }
        },
      ),
      backgroundColor: Color.fromARGB(255, 24, 24, 24),
    );
  }
}