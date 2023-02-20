import 'package:flutter/material.dart';
import 'package:inovest/persentation/resources/colors.dart';
import 'package:inovest/persentation/resources/fonts.dart';
import 'package:inovest/persentation/resources/images.dart';
import 'package:inovest/persentation/resources/strings.dart';
import 'package:inovest/persentation/resources/values.dart';
import 'package:inovest/persentation/screens/auth/login_screen.dart';
import 'package:inovest/persentation/screens/auth/sign_up_screen.dart';
import 'package:inovest/persentation/widget/auth/build_card.dart';
import 'package:inovest/persentation/widget/build_divider.dart';
import 'package:inovest/persentation/widget/default_button.dart';
import 'package:inovest/persentation/widget/default_text.dart';
import 'package:inovest/persentation/widget/navigator.dart';

class SelectScreen extends StatelessWidget {
  const SelectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Padding(
        padding: EdgeInsets.only(
            top: HeightSized.s8, left: HeightSized.s4, right: HeightSized.s4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                Images.logo,
                height: HeightSized.s20,
                width: HeightSized.s20, //25
              ),
            ),
            SizedBox(
              height: HeightSized.s2,
            ),
            DefaultText(
                text: Strings.letsIn,
                color: ColorManager.textColor2,
                fontSize: FontSized.fs30,
                fontWeight: FontWeightManager.semiBold),
            SizedBox(
              height: HeightSized.s8,
            ),
            const BuildCard(
                text: Strings.facebook,
                image: Images.faceBook),
            SizedBox(
              height: HeightSized.s2,
            ),
            const BuildCard(text: Strings.google,
                image: Images.google),
            SizedBox(height: HeightSized.s4),
            Row(
              children: [
                Expanded(
                    child: BuildDivider(
                  height:HeightSized.sh3 ,
                )),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: HeightSized.s2),
                  child: DefaultText(
                      text: Strings.or,
                      color: ColorManager.primary,
                      fontSize: FontSized.fs14,
                      fontWeight: FontWeightManager.semiBold),
                ),
                Expanded(
                    child: BuildDivider(
                  height: HeightSized.sh3,
                )),
              ],
            ),
            SizedBox(height: HeightSized.s4),
            DefaultButton(
                onPressed: () {
                  Navigators.navigateTo(context, LoginScreen());
                },
                text: Strings.signin,
                color: ColorManager.primary),
            SizedBox(height:HeightSized.s5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DefaultText(
                    text: Strings.notHave,
                    color: ColorManager.textColor2,
                    fontSize: FontSized.fs14,
                    fontWeight: FontWeightManager.regular),
                InkWell(
                  onTap: () {
                    Navigators.navigateTo(context,
                        SignUpScreen()
                    );
                  },
                  child: DefaultText(
                      text: Strings.signup,
                      color: ColorManager.primary,
                      fontSize: FontSized.fs14,
                      fontWeight: FontWeightManager.semiBold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
