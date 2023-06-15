import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelapp/widgets/categoryCard.dart';
import 'package:travelapp/widgets/resortCard..dart';
import 'package:travelapp/widgets/search.dart';

class homePage extends StatelessWidget {
  homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hello, Peter Parker",
                    style: GoogleFonts.roboto(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Image.asset("images/Avatar.png")
                ],
              ),
              SizedBox(height: 16),
              Text(
                "Discover Your Dream Destinations",
                style: GoogleFonts.roboto(
                    fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  searchWidgets(),
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: 56,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff448FFF),
                        image: DecorationImage(
                          image: AssetImage("images/filter.png"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  categoryCard(
                    icon: "images/pesawat.png",
                    text: "Flight",
                    ontap: () {},
                  ),
                  SizedBox(width: 16),
                  categoryCard(
                    icon: "images/hotel.png",
                    text: "Hotel",
                    ontap: () {},
                  ),
                  SizedBox(width: 16),
                  categoryCard(
                    icon: "images/train.png",
                    text: "Train",
                    ontap: () {},
                  ),
                  SizedBox(width: 16),
                  categoryCard(
                    icon: "images/car.png",
                    text: "Car",
                    ontap: () {},
                  ),
                ],
              ),
              SizedBox(height: 24),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Trending",
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(width: 32),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Featured",
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffB1B1B1),
                      ),
                    ),
                  ),
                  SizedBox(width: 32),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Top visit",
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffB1B1B1),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 28),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    resortCard(
                      resortName: "Hilton Resort",
                      image: "images/resort1.png",
                      location: "Cairo, Egypt",
                      ratting: "4,9",
                      price: "899k",
                      ontap: () {},
                    ),
                    SizedBox(width: 15),
                    resortCard(
                      resortName: "Oneeighty Resort",
                      image: "images/resort2.png",
                      location: "Bali, Indonesia",
                      ratting: "4,5",
                      price: "799k",
                      ontap: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
