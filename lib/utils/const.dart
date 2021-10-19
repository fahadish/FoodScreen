import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const colorBlack = Colors.black;
const colorOrange = Colors.deepOrangeAccent;
const colorGray = Color(0xff9E9E9E);
const colorWhite = Color(0xffFFA801);
const colorGreen = Color(0xff7BB655);

TextTheme defaultText = TextTheme(
    headline1: GoogleFonts.ubuntu(fontWeight: FontWeight.bold, fontSize: 96),
    headline2: GoogleFonts.ubuntu(fontWeight: FontWeight.bold, fontSize: 60),
    headline3: GoogleFonts.ubuntu(fontWeight: FontWeight.bold, fontSize: 48),
    headline4: GoogleFonts.ubuntu(fontWeight: FontWeight.bold, fontSize: 34),
    headline5: GoogleFonts.ubuntu (fontWeight: FontWeight.bold, fontSize: 24),
    headline6: GoogleFonts.ubuntu(fontWeight: FontWeight.bold, fontSize: 20),
    bodyText1: GoogleFonts.ubuntu(fontWeight: FontWeight.normal, fontSize: 16),
    bodyText2: GoogleFonts.ubuntu(fontWeight: FontWeight.normal, fontSize: 14),
    subtitle1: GoogleFonts.ubuntu(fontWeight: FontWeight.normal, fontSize: 16),
    subtitle2: GoogleFonts.ubuntu(fontWeight: FontWeight.w400, fontSize: 14),
    button: GoogleFonts.ubuntu(fontWeight: FontWeight.w400, fontSize: 14),
    caption: GoogleFonts.ubuntu(fontWeight: FontWeight.normal, fontSize: 12));
