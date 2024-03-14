import 'package:flutter/material.dart';
import 'input_text.dart';
class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      left: 20,
      right: 20,
      child: Column(
      children: <Widget>[
      InputText(
        keyboardType: TextInputType.emailAddress,
        label: "EMAIL ADDRESS",
        ),
        Container(
          decoration: BoxDecoration(
            border: Border( bottom: BorderSide(
              color: Colors.black12,
            ),
            ),
            ),
          child: Row(
          children: <Widget>[
            Expanded(child: InputText(
        label: "PASSWORD",
        obscureText: true,
        borderEbable: false,
        ),
        ),
        Padding(padding: const EdgeInsets.symmetric(vertical: 10),
        child:  TextButton(
          child: Text("Forgot Password",style: TextStyle(fontWeight: FontWeight.bold),
          ),
        onPressed: () {},
        ),
        ),
          ],
        ),
        ),
        SizedBox(height: 30,),
      Padding(
  padding: EdgeInsets.symmetric(vertical: 20),
  child: SizedBox(
    width: double.infinity,
    child: TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.pinkAccent),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Text(
          "Sing in",
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
  ),
),
    Row(children: <Widget>[
    Text("New to friendly Desi?"),
    ],)
    ],
    ),
    );
  }
}