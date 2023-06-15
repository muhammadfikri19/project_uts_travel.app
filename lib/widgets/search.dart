import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class searchWidgets extends StatelessWidget {
  searchWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(left: 23),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        height: 51.57,
        width: 300,
        child: Center(
          child: TextFormField(
            decoration: InputDecoration(
              icon: Image.asset("images/Search.png"),
              border: InputBorder.none,
              hintText: "Search...",
              hintStyle: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
