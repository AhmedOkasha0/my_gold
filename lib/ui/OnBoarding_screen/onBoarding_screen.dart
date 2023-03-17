import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_gold_app/ui/Home/Home_screen.dart';
import 'package:my_gold_app/ui/OnBoarding_screen/boarding_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  static const String routeName = 'onboarding';

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color(0xff5D001A),
              Color(0xff300021),
            ],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 75,
              right: 25,
              child: InkWell(
                child: Text(
                  'Skibe',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  )),
                ),
              ),
            ),
            PageView(
              controller: _controller,
              children: [
                BoardingItem(
                  imagePath: 'assets/images/first.png',
                  text: '. Buy sell  . Sell   . Redeem ',
                  secText: 'You can buy , sell, earn, and \n redeem all in one place',
                ),
                BoardingItem(
                  imagePath: 'assets/images/second_image.png',
                  secText:
                  'We are a registered online platform \n which wast trusted by 10 Lac users ',
                  text: '100% Security',
                ),
                BoardingItem(
                  imagePath: 'assets/images/second_image.png',
                  secText: 'Earn interest of up 14%* \n into your wallet directly',
                  text: 'Earn interest',
                )
              ],
            ),
            Positioned(
                bottom: 60,
                right: 170,
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                      dotWidth: 8, dotHeight: 6, activeDotColor: Colors.white),
                )),
            Positioned(
                bottom: MediaQuery.of(context).size.height * 0.15,
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(),
                  child: (ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context,HomeScreen.routeName);
                    },
                    child: Text(
                      'Continue',
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
                  )),
                )),
          ],
        ),
      ),
    );
  }
}
