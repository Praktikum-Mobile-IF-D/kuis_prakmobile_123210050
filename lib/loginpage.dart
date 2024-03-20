import 'package:flutter/material.dart';
import 'package:kuis123210050/databuku.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userController = TextEditingController();
  final passController = TextEditingController();

  Widget _emailField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        controller: userController,
        decoration: InputDecoration(
          hintText: 'Email',
          contentPadding: EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Colors.blue),
          )
        ),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        obscureText: true,
        controller: passController,
        decoration: InputDecoration(
            hintText: 'Password',
            contentPadding: EdgeInsets.all(8.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(color: Colors.blue),
            )
        ),
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () {
          if(userController.text=="mayawuland@gmail.com" && passController.text=="mayawuland"){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return Buku();
              })
            );
          } else {
            showDialog(context: context, builder: (BuildContext context){
              return AlertDialog(
                title: Text("Error"),
                content: Text("Username atau password salah"),
                actions: [
                  TextButton(onPressed: () {
                    Navigator.of(context).pop();
                  }, child: Text("Close"))
                ],
              );
            });
          }
        },child: Text("Login"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Login Page"),
          ),
          body: Column(
            children: [
              _emailField(),
              _passwordField(),
              _loginButton(context),
            ],
          ),
        )
    );
  }
}