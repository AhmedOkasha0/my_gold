import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_gold_app/theme/Theme_screen.dart';
import 'package:my_gold_app/ui/Home/custom_container.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: screenSize.height * 0.09,
              width: screenSize.width * 1,
              decoration: BoxDecoration(
                  color: ThemeScreen.primaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(70),
                      bottomRight: Radius.circular(70))),
            ),
            SizedBox(
              height: screenSize.height * 0.32,
              width: screenSize.width * 0.99,
              child: Center(child: CoustomContainer()),
            ),
          ],
        ),
        SizedBox(
          height: screenSize.height * 0.02,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            'Buy More',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          style: ElevatedButton.styleFrom(
              minimumSize: Size(350, 50),
              padding: EdgeInsets.symmetric(vertical: 18),
              backgroundColor: Color(0xffEFC88A),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              )),
        ),
        SizedBox(
          height: screenSize.height * 0.02,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Gold Fortune',
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
            ),
            Text('Gold Saving Plane'),
          ],
        ),
        Container(
          padding: EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Stay Your Gold Savings plan \n With Our creat Your Own Plan',
                style: GoogleFonts.poppins(),
              ),
              Image.asset('assets/images/diamond.png'),
            ],
          ),
        ),
      ],
    );
  }
}
