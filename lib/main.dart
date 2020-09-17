import 'package:flutter/material.dart';

import 'package:pushnotificationschat/src/screens/home.dart';
import 'package:pushnotificationschat/src/screens/message_screen.dart';

import 'src/providers/push_notification_provider.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    final pushProvider = new PushNotificationProvider();
    pushProvider.initNotifications();

    pushProvider.mensajesStream.listen((argumento) {
      print("Argumento notification desde main: $argumento");
      navigatorKey.currentState.pushNamed('mensaje', arguments: argumento);
     });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      title: 'Testing Push Notifications',
      initialRoute: 'home',
      routes: {
        'home':(BuildContext c) => HomeScreen(),
        'mensaje':(BuildContext c) => MessageScreen()
      },
    );
  }
}