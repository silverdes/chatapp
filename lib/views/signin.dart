import 'package:app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  final Function toggle;
  SignIn(this.toggle);
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 13.0, vertical: 60.0),
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.black)),
                    hintText: 'Your Email',
                    helperText: '',
                    labelText: 'Your Email',
                    prefixIcon: const Icon(
                      Icons.mail,
                      color: Colors.blue,
                    ),
                    suffixStyle: const TextStyle(color: Colors.green)),
              ),
              SizedBox(
                height: 5.0,
              ),
              TextFormField(
                obscureText: true,
                decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.black)),
                    hintText: 'Password',
                    helperText: '',
                    labelText: 'Password',
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Colors.blueAccent,
                    ),
                    suffixStyle: const TextStyle(color: Colors.green)),
              ),
              GestureDetector(
                onTap: () => print("Forget Password"),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  alignment: Alignment.centerRight,
                  child: Text("Forget Password ?",
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(fontSize: 14.0),
                      )),
                ),
              ),
              SizedBox(height: 20.0),
              GestureDetector(
                onTap: () => print("Sign In"),
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.blue,
                  ),
                  child: Text(
                    "Sign In",
                    style:
                        GoogleFonts.lato(fontSize: 18.0, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              GestureDetector(
                onTap: () => print("heigh levels"),
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.white54,
                  ),
                  child: Text(
                    "Sign In with Google",
                    style:
                        GoogleFonts.lato(fontSize: 18.0, color: Colors.black87),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Don't Have account? ",
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        widget.toggle();
                      },
                      child: Text(
                        " Create a new one",
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              fontSize: 17.0,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
