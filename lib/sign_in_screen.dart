import 'package:flutter/material.dart';
import 'package:untitled/main.dart';
class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
     /* appBar: AppBar(
        title: Text("Sign In"),
      ),*/
      body: SignInBody() ,
    );
  }
}
class SignInBody extends StatelessWidget {
  const SignInBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(/*sizedbox width double dot infinity*/
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text("Welcome back",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold
              ),),
            Text(
              "Sign in with your email or phone number and password ",
              textAlign: TextAlign.center,
            ),
           SizedBox(height: 25,),
            SignInForm(),
          ],

        ) ,
      )

    );
  }
}

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(25,0,25,10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              color: Colors.white,
            ),
            child: TextFormField(
              style: TextStyle(color: Colors.brown,),
              cursorColor: Colors.white12,
              decoration: InputDecoration(
                labelText:"Email",
                labelStyle: TextStyle(color: Colors.black87,fontWeight: FontWeight.w600),
                hintText: "Enter your email or phone number",
                fillColor: Colors.brown,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                  borderSide: BorderSide(color: Colors.black87),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                  borderSide: BorderSide(color: Colors.black87),
                ),
              ),
            ),
          ),

         /* SizedBox(height: 25,),*/
                     /***********************Password******************/
          Container(
            margin: EdgeInsets.all(25),
            child: TextFormField(
              style: TextStyle(color: Colors.brown,),
              cursorColor: Colors.white12,
              obscureText: true,
              decoration: InputDecoration(
                labelText:"Password",
                labelStyle: TextStyle(color: Colors.black87,fontWeight: FontWeight.w600),
                hintText: "Enter your password",
                fillColor: Colors.brown,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(45),
                  borderSide: BorderSide(color: Colors.black87),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(45),
                  borderSide: BorderSide(color: Colors.black87),
                ),
              ),
            ),
          ),

          SizedBox(height: 25,),


        ],
      ),
    );
  }
}



