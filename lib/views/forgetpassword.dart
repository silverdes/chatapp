import 'package:app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
                      color: Colors.teal,
                    ),
                    suffixStyle: const TextStyle(color: Colors.green)),
              ),
              SizedBox(height: 10.0),
              GestureDetector(
                onTap: () => print("Reset your password"),
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.teal,
                  ),
                  child: Text(
                    "Reset your password",
                    style: GoogleFonts.lato(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
