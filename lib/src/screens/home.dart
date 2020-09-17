import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Testing Push Notifications HomePage'),
        ),
        body: Center(
          child: Container(
            child: Text('Testing Push Notifications'),
          ),
        ),
      );
  }
}