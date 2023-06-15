import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class categoryCard extends StatelessWidget {
  categoryCard({
    required this.icon,
    required this.text,
    required this.ontap,
  });

  String icon;
  String text;
  void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: ontap,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          width: 70,
          height: 88,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              Container(
                height: 56,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage(icon),
                    )),
              ),
              SizedBox(height: 8),
              Text(
                text,
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  color: Color(0xff626262),
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
