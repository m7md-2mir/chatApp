import 'package:chat/login.page.dart';
import 'package:chat/utils.dart';
import 'package:flutter/material.dart';
import 'package:zego_zimkit/zego_zimkit.dart';



void main(){
  ZIMKit().init(appID: Utils.id,
  appSign: Utils.signin);
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: LoginPage(),
    );
  }
}
