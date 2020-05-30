import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget appBarMain(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    centerTitle: true,
    title: Text(
      "ChatApp",
      style: GoogleFonts.kaushanScript(
        textStyle: TextStyle(
          letterSpacing: 3.0,
          fontSize: 35.0,
          color: Colors.black,
        ),
      ),
    ),
  );
}
