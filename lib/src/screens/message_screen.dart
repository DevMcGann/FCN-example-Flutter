import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    final arg = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        appBar: AppBar(
          title: Text('Notification Message Screen'),
        ),
        body: Center(
          child: Container(
            child: Text(arg),
          ),
        ),
      );
  }
}