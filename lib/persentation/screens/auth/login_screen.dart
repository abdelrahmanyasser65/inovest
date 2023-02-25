import 'package:flutter/material.dart';
import 'package:inovest/persentation/resources/colors.dart';
import 'package:inovest/persentation/resources/fonts.dart';
import 'package:inovest/persentation/resources/images.dart';
import 'package:inovest/persentation/resources/strings.dart';
import 'package:inovest/persentation/resources/values.dart';
import 'package:inovest/persentation/screens/layout/layout_screen.dart';
import 'package:inovest/persentation/widget/auth/default_textform.dart';
import 'package:inovest/persentation/widget/default_button.dart';
import 'package:inovest/persentation/widget/default_text.dart';
import 'package:inovest/persentation/widget/navigator.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);
final  TextEditingController password=TextEditingController();
final  TextEditingController email=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorManager.white,
      body:ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: HeightSized.s4,
              vertical: HeightSized.s8
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child:  Image.asset(Images.logo,
                    height: HeightSized.s12,
                    width: HeightSized.s20,
                  ),
                ),
                SizedBox(
                  height: HeightSized.s6,
                ),
                DefaultText(
                  text:Strings.letSign,
                  fontSize: FontSized.fs20,
                  fontWeight: FontWeightManager.semiBold,
                  color: ColorManager.textColor2,
                ),
                SizedBox(
                  height: HeightSized.s1,
                ),
                DefaultText(
                    color: ColorManager.textColor1,
                    text: Strings.welcome,
                    fontSize: FontSized.fs14,
                    fontWeight: FontWeightManager.semiBold),

                SizedBox(
                  height: HeightSized.s6,
                ),
                DefaultText(
                    text: Strings.email,
                    color: ColorManager.textColor1,
                    fontSize: FontSized.fs16,
                    fontWeight: FontWeightManager.medium),
                DefaultTextFormFiled(
                    controller: email,
                    textInputType: TextInputType.emailAddress,
                    obscureText: false,
                    prefixIcon: Icons.email),
                SizedBox(
                  height: HeightSized.s1,
                ),
                DefaultText(
                    text: Strings.password,
                    color: ColorManager.textColor1,
                    fontSize: FontSized.fs16,
                    fontWeight: FontWeightManager.medium),
                DefaultTextFormFiled(
                    controller:password,
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                    maxLines: 1,
                    prefixIcon: Icons.lock),
                SizedBox(height: HeightSized.s4),
                DefaultButton(
                  text:Strings.signin,
                  onPressed: () {
Navigators.navigateTo(context, AppLayout());
                  },
                  color: ColorManager.primary,
                ),
                SizedBox(height: HeightSized.s3),
                Align(
                  alignment: Alignment.centerRight,
                  child: DefaultText(
                      text: Strings.forget,
                      color: ColorManager.primary,
                      fontSize: FontSized.fs14,
                      fontWeight: FontWeightManager.medium),
                ),

              ],
            ),
          ),
        ],
      ),

    );

  }
}
