import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todo_app_firebase/screens/posts/posts_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "エンジニア用SNS(仮)",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                  width: 300,
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(hintText: "メールアドレス"),
                  )),
            ),
            Container(
                width: 300,
                child: TextField(
                  controller: passController,
                  decoration: InputDecoration(hintText: "パスワード"),
                )),
            SizedBox(
              height: 10,
            ),
            RichText(
                text:
                    TextSpan(style: TextStyle(color: Colors.black), children: [
              TextSpan(text: "アカウントを作成していない方は"),
              TextSpan(
                  text: "こちら",
                  style: TextStyle(color: Colors.blue),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print("アカウント作成");
                    })
            ])),
            SizedBox(
              height: 70,
            ),
            ElevatedButton(onPressed: () {
              // pushReplacementで画面を
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>PostsPage()));
            }, child: Text("emailログイン"))
          ],
        ),
      )),
    );
  }
}