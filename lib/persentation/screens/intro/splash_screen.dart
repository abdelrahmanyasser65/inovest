import 'package:flutter/material.dart';
import 'package:inovest/persentation/resources/constants.dart';
import 'package:inovest/persentation/resources/images.dart';
import 'package:inovest/persentation/resources/values.dart';
import 'package:inovest/persentation/screens/intro/onboarding_screen.dart';
import 'package:inovest/persentation/widget/navigator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds:AppConstants.splashDelay
        //AppConstants.splashDelay
      ),
        (){
        Navigators.navigateAndFinish(context,
         const    OnBoardingScreen());
        }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Image.asset(Images.logo,
          height: HeightSized.s17,
          ),
        )
    );
  }
}
