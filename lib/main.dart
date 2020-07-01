import 'package:IoT_Dashboard/models/user.dart';
import 'package:IoT_Dashboard/screens/wrapper.dart';
import 'package:IoT_Dashboard/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:IoT_Dashboard/screens/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

 /* return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
    
      ),
    ); */