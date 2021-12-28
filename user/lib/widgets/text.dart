import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustText extends StatelessWidget {
final String data;
final TextStyle textStyle;
 // ignore: use_key_in_widget_constructors
 const CustText({required this.data , required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: GoogleFonts.underdog(
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        textStyle: textStyle
      ),
    );
  }
}
