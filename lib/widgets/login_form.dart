import 'package:flutter/material.dart';
import 'package:flutter_rest_api/utils/responsive.dart';
import 'input_text.dart';
class LoginForm extends StatefulWidget {
 // const LoginForm({super.key});
 @override
 _LoginFormState createState() => _LoginFormState();
}
class _LoginFormState extends State<LoginForm> {
  


  GlobalKey<FormState> _formKey = GlobalKey();
  String _email='', _password='';

  _submit(){//metodo privado
 final isOk = _formKey.currentState?.validate();
 print("form isOk $isOk");

/* if(isOk){

 }*/
 

  }

  @override
  Widget build(BuildContext context) {

    final Responsive responsive = Responsive.of(context);
    return Positioned(
      bottom: 30,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: responsive.isTablet ? 430:360,
        ),
        child: Form(
          key: _formKey,
          child: Column(
          children: <Widget>[
          InputText(
            keyboardType: TextInputType.emailAddress,
            label: "EMAIL ADDRESS",
            fontSize: responsive.dp(responsive.isTablet ? 1.2: 1.4),
            onChanged: (text){
              _email = text;
            },
            validator: (text){
              if(text == null || !text.contains("@")){
                return "invalid email";
              }
              return null;
            },
            ),
            SizedBox(height: responsive.dp(2)),
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
            borderEnable: false,
            fontSize: responsive.dp(responsive.isTablet ? 1.2: 1.4),
             onChanged: (text){
              _password = text;
            },
            validator: (text){
              if(text?.trim().length==0){
                return "invalid password";
              }
              return null;
            },
            ),
            ),
            Padding(padding: const EdgeInsets.symmetric(vertical: 10),
            child:  TextButton(
              child: Text("Forgot Password",style: TextStyle(fontWeight: FontWeight.bold, fontSize: responsive.dp(responsive.isTablet ? 1.2: 1.5)),
              ),
            onPressed: () {},
            ),
            ),
              ],
            ),
            ),
            SizedBox(height: responsive.dp(5)),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: SizedBox(
              width: double.infinity,
              child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.pinkAccent),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "Sing in",
              style: TextStyle(color: Colors.white,
              fontSize: responsive.dp(1.5),
              ),
            ),
          ),
           onPressed: _submit,
              ),
            ),
          ),
              SizedBox(height: responsive.dp(2)),
              Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              Text("New to friendly Desi?", style: TextStyle(fontSize: responsive.dp(1.5),
              
              ),
              ),
              TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'register');
              }, 
              child: Text("Sing up",
              style: TextStyle(color: Colors.pinkAccent, fontSize: responsive.dp(1.5),
              ),
              ),
              ),
              ],
              ),
              SizedBox(height: responsive.dp(10),),
              ],
              ),
        ),
      ),
    );
  }
}