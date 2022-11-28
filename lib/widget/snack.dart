import 'package:flutter/material.dart';

class Snack extends StatefulWidget {
  const Snack({Key? key}) : super(key: key);

  @override
  State<Snack> createState() => _SnackState();
}

class _SnackState extends State<Snack> {
 
  

  void callSnack(BuildContext context) {
    SnackBar snackbar = SnackBar(
      content: Text('Je suis la snackbar'),
      duration: Duration(seconds: 10),
      backgroundColor: Colors.pink,
      action: SnackBarAction(
        label: 'Clic',
        textColor: Colors.white,
        onPressed: () {
          print('Clic snackbar');
        },
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  callSnack(context);
                },
                child: Text('Press me')
                )
          ],
        ),
    );
  }
}