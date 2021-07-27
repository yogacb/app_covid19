import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/widgets.dart';

Color bkColor = Color(0xFF334443);
Color redColor = Color(0xFFF38BA0);
Color blueColor = Color(0xFFB5EAEA);
Color purpleColor = Color(0xFFC67ACE);
Color greenColor = Color(0xFF766161);
Color bgColor = Color(0xFFF9F9F9);
Color whiteColor = Color(0xFFFFFFFF);

TextStyle blackTextStyle = GoogleFonts.poppins(
  color: bkColor,
);
TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: whiteColor,
);

// Media Query
Size displaySize(BuildContext context) {
  debugPrint('Size = ' + MediaQuery.of(context).size.toString());
  return MediaQuery.of(context).size;
}

double displayHeight(BuildContext context) {
  debugPrint('Height = ' + displaySize(context).height.toString());
  return displaySize(context).height;
}

double displayWidth(BuildContext context) {
  debugPrint('Width = ' + displaySize(context).width.toString());
  return displaySize(context).width;
}
