import 'package:flutter/material.dart';

import 'detail_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  width: 600,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    color: Colors.deepPurple.shade300,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60, left: 120),
                    child: Text(
                      "Login Page",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.deepPurple.shade100),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: Center(
                    child: Image.network(
                      "https://o.remove.bg/downloads/f77e5532-4031-4802-a85e-e3ada59e3756/vector-illustration-graphic-style-digital-art_476641-103-removebg-preview.png",
                      height: 180,
                      width: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.black)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock_open,
                      color: Colors.black,
                    ),
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.black)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => DetailPage()));
              },
              color: Colors.deepPurple.shade300,
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
