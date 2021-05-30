import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          title: Center(child: Text("Login Page")),
          backgroundColor: Colors.blue,
          elevation: 4.0,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Container(
                  width: 290,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Email or Phone",
                        labelText: "Email",
                        labelStyle:
                            TextStyle(fontSize: 18, color: Colors.black),
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.mail)),
                    keyboardType: TextInputType.name,
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 290,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Password",
                          labelText: "Password",
                          labelStyle:
                              TextStyle(fontSize: 18, color: Colors.black),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.security)),
                      obscureText: true,
                      maxLength: 10,
                    ),
                  ),
                ),
              ),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.login),
                  label: Text("Sign In")),
              Container(
                child: Text("Don't have an account?"),
              ),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.create),
                  label: Text("Sign Up"))
              // ElevatedButton(onPressed: () {}, child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
