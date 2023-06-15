import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelapp/menu.dart';
import 'package:travelapp/pages/homePage.dart';

class onboardingPage extends StatelessWidget {
  onboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("images/travel.png"),
        fit: BoxFit.fitHeight,
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SafeArea(
            child: Image.asset(
              "images/logoTravel.png",
              width: 170,
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 32),
                child: Image.asset(
                  "images/text.png",
                  width: 300,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 32),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return Menu();
                      }),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Get Started Now",
                          style: GoogleFonts.poppins(fontSize: 16)),
                      SizedBox(width: 10),
                      Image.asset("images/go.png")
                    ],
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xff448FFF)),
                    fixedSize: MaterialStatePropertyAll(Size(327, 56)),
                    shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16))),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
