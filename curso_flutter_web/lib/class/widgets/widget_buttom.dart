// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonApp extends StatefulWidget {
  Color color;
  String text;
  Icon? ico;
  Function? onPressed;

  ButtonApp(
      {Key? key,
      this.color = Colors.red,
      this.text = '',
      this.ico,
      this.onPressed})
      : super(key: key);

  @override
  State<ButtonApp> createState() => _ButtonAppState();
}

class _ButtonAppState extends State<ButtonApp> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          primary: widget.color,
          padding:
              const EdgeInsets.symmetric(horizontal: 350.0, vertical: 15.0)),
      onPressed: () {
        widget.onPressed!();
      },
      label: Text(
        widget.text,
        style: GoogleFonts.mavenPro(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold)),
      ),
      icon: widget.ico!,
    );
  }
}
