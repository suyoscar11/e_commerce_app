import 'package:e_commerce_app/Screens/Homepage.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.w700,
          color: Colors.white), //tile font size, weight and color
      bodyTextStyle: TextStyle(fontSize: 19.0, color: Colors.white),
      //body text size and color
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      //decription padding
      imagePadding: EdgeInsets.all(20), //image padding
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.1, 0.5, 0.7, 0.9],
          colors: [
            Colors.orange,
            Colors.deepOrangeAccent,
            Colors.red,
            Colors.redAccent,
          ],
        ),
      ), //show linear gradient background of page
    );

    return IntroductionScreen(
      globalBackgroundColor: Colors.deepOrangeAccent,
      //main background of screen
      pages: [
        //set your page view here
        PageViewModel(
          title: "E-Commerce",
          body: "The no. 1 E-commerce App",
          image: introImage('assets/images/logo.jpg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "F-Commerce",
          body: "The no. 1 E-commerce App",
          image: introImage('assets/images/20off.jpg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "G-Commerce",
          body: "The no. 1 E-commerce App",
          image: introImage('assets/images/products1.jpg'),
          decoration: pageDecoration,
        ),

        //add more screen here
      ],

      onDone: () => goHomepage(context),
      onSkip: () => goHomepage(context),
      showSkipButton: true,
      dotsFlex: 0,
      nextFlex: 0,
      skip: Text(
        'Skip',
        style: TextStyle(color: Colors.white),
      ),
      next: Icon(
        Icons.arrow_forward,
        color: Colors.white,
      ),
      done: Text(
        'Getting Stated',
        style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
      ),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0), //size of dots
        color: Colors.white, //color of dots
        activeSize: Size(22.0, 10.0),
        //activeColor: Colors.white, //color of active dot
        activeShape: RoundedRectangleBorder(
          //shave of active dot
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }

  void goHomepage(context) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) {
      return Homepage();
    }), (Route<dynamic> route) => false);
    //Navigate to home page and remove the intro screen history
    //so that "Back" button wont work.
  }

  Widget introImage(String assetName) {
    //widget to show intro image
    return Align(
      child: Image.asset('$assetName', width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }
}
