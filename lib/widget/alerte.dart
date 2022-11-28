import 'package:flutter/material.dart';
import 'package:navigationapp/pages/page_bottom.dart';

class Alerte extends StatefulWidget {
  const Alerte({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Alerte> createState() => _AlerteState();
}

class _AlerteState extends State<Alerte> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          alerte(context, widget.title, 'bv le S', 'DQZDQZD');
        },
        child: Text('Press me'),
      ),
    );
  }
}

Future<void> alerte(BuildContext context, String title, String message,
    String buttonText) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(message),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text(buttonText),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
