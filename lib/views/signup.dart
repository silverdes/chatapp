import 'package:app/services/auth.dart';
import 'package:app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isLoading = false;
  AuthMethods authMethods = new AuthMethods();
  final formkey = GlobalKey<FormState>();
  TextEditingController userNameTextEditingController =
      new TextEditingController();
  TextEditingController emailTextEditingController =
      new TextEditingController();
  TextEditingController passwordTextEditingController =
      new TextEditingController();

  signMeUp() {
    if (formkey.currentState.validate()) {
      setState(() {
        isLoading = true;
      });
      authMethods
          .signInWithEmailAndPassword(emailTextEditingController.text,
              passwordTextEditingController.text)
          .then((val) {
        print("$val");
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context),
      body: isLoading
          ? Container(
              alignment: Alignment.center,
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 13.0, vertical: 60.0),
                child: Form(
                  key: formkey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        validator: (val) {
                          return val.isEmpty || val.length < 4
                              ? "Username must be greater than 4 character"
                              : null;
                        },
                        controller: userNameTextEditingController,
                        decoration: new InputDecoration(
                            border: new OutlineInputBorder(
                                borderSide:
                                    new BorderSide(color: Colors.black)),
                            hintText: 'Username',
                            helperText: '',
                            labelText: 'Username',
                            prefixIcon: const Icon(
                              Icons.account_circle,
                              color: Colors.teal,
                            ),
                            suffixStyle: const TextStyle(color: Colors.green)),
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        validator: (val) {
                          return RegExp(
                                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(val)
                              ? null
                              : "Please Provide a valid Email";
                        },
                        controller: emailTextEditingController,
                        decoration: new InputDecoration(
                            border: new OutlineInputBorder(
                                borderSide:
                                    new BorderSide(color: Colors.black)),
                            hintText: 'Your Email',
                            helperText: '',
                            labelText: 'Your Email',
                            prefixIcon: const Icon(
                              Icons.mail,
                              color: Colors.teal,
                            ),
                            suffixStyle: const TextStyle(color: Colors.green)),
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        validator: (val) {
                          return val.isEmpty || val.length < 6
                              ? "Password must be greater than 6 character"
                              : null;
                        },
                        controller: passwordTextEditingController,
                        obscureText: true,
                        decoration: new InputDecoration(
                            border: new OutlineInputBorder(
                                borderSide:
                                    new BorderSide(color: Colors.black)),
                            hintText: 'Password',
                            helperText: '',
                            labelText: 'Password',
                            prefixIcon: const Icon(
                              Icons.lock,
                              color: Colors.teal,
                            ),
                            suffixStyle: const TextStyle(color: Colors.green)),
                      ),
                      SizedBox(height: 10.0),
                      GestureDetector(
                        onTap: () => signMeUp(),
                        child: Container(
                          alignment: Alignment.center,
                          height: 50.0,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.teal,
                          ),
                          child: Text(
                            "Sign Up",
                            style: GoogleFonts.lato(
                              fontSize: 18.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      GestureDetector(
                        onTap: () => print("Sign Up With Google"),
                        child: Container(
                          alignment: Alignment.center,
                          height: 50.0,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.teal[200],
                          ),
                          child: Text(
                            "Sign Up with Google",
                            style: GoogleFonts.lato(
                              fontSize: 18.0,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
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
                              "Already Have an account? ",
                              style: GoogleFonts.lato(
                                textStyle: TextStyle(fontSize: 16.0),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => print("Sign In"),
                              child: Text(
                                " Sign In",
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
            ),
    );
  }
}
