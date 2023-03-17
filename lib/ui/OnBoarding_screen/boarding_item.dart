import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoardingItem extends StatelessWidget {
  String text;
  String imagePath;
  String secText;
  BoardingItem(
      {required this.imagePath, required this.secText, required this.text});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: screenSize.height*0.2,
            ),
            Image.asset(imagePath,fit: BoxFit.fill,),
            SizedBox(
              height: screenSize.height*0.1,
            ),
            Text(
              text,
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 22,
              )),
            ),
            SizedBox(
              height: screenSize.height * 0.02,
            ),
            Text(
              secText,
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              )),
            ),
          ],
        ),
      ),
    );
  }
}
