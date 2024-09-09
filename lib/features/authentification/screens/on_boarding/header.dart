import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:crowdapp/constants/text_string.dart';

const _mainColor = Color(0xFF1c77c3);

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.black,
          size: 10,
        ),
        onPressed: null,
      ),
      title: Text(NameApp,
        style: GoogleFonts.nunito(
          color: _mainColor,
          fontSize: 22,
          fontWeight: FontWeight.w800,
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}