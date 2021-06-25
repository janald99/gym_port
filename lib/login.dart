import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.deepOrange),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            child: LoginPage(),
          ),
        ));
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
            Container(
              child: Column(children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 100),
                  child: Text("Learn Free"),
                ),
                Text("YOLO"),
            ]),
          ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 32
              ),
              child: Center(
                child: Image.asset("assets/squats.png"),
            )),
            Container(
              child: Container(
                margin: EdgeInsets.all(32),
                padding: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                  ),
                ),
              ),
          ),
        ],
      )),
    );
  }
}

