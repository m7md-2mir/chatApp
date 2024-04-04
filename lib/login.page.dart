import 'package:chat/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:zego_zimkit/zego_zimkit.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final userId = TextEditingController();
  final username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: userId,
              decoration: InputDecoration(
                labelText: "User Id"
              ),
            ),
            TextField(
              controller: username,
              decoration: InputDecoration(
                  labelText: "Username"
              ),
            ),
            ElevatedButton(onPressed: () async{
              await ZIMKit().connectUser(id: userId.text,name: username.text);
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomePage()));
            }, child: Text("login"))
          ],
        ),
      ),

    );
  }
}
