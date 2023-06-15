import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class resortCard extends StatelessWidget {
  resortCard({
    required this.resortName,
    required this.image,
    required this.location,
    required this.ratting,
    required this.price,
    required this.ontap,
  });

  String image;
  String resortName;
  String location;
  String ratting;
  String price;
  void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: ontap,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: EdgeInsets.all(12),
          width: 260,
          height: 238,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Color(0xffB1B1B1), width: 1)),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: 236,
                    height: 164,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: AssetImage(image),
                        )),
                  ),
                  Positioned(
                    right: 18,
                    top: 18,
                    child: Container(
                      padding: EdgeInsets.only(left: 6, right: 6),
                      width: 58,
                      height: 26,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("images/star.png"),
                          Text(
                            ratting,
                            style: GoogleFonts.roboto(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        resortName,
                        style: GoogleFonts.roboto(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          Image.asset("images/Map.png"),
                          Text(
                            location,
                            style: GoogleFonts.roboto(
                              fontSize: 12,
                              color: Color(0xff707070),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    price,
                    style: GoogleFonts.roboto(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
