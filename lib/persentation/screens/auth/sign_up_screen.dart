import 'package:flutter/material.dart';
import 'package:inovest/persentation/resources/colors.dart';
import 'package:inovest/persentation/resources/fonts.dart';
import 'package:inovest/persentation/resources/images.dart';
import 'package:inovest/persentation/resources/strings.dart';
import 'package:inovest/persentation/resources/values.dart';
import 'package:inovest/persentation/widget/auth/default_textform.dart';
import 'package:inovest/persentation/widget/default_button.dart';
import 'package:inovest/persentation/widget/default_text.dart';
class SignUpScreen extends StatelessWidget {
   SignUpScreen({Key? key}) : super(key: key);
  final  TextEditingController password=TextEditingController();
  final  TextEditingController email=TextEditingController();
   final  TextEditingController name=TextEditingController();
   final  TextEditingController phone=TextEditingController();


   @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorManager.white,
      body:ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
               left: HeightSized.s4,
              right:  HeightSized.s4,
                bottom: HeightSized.s2,
              top: HeightSized.s8

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
                  text:Strings.gettingStarted ,
                  fontSize: FontSized.fs20,
                  fontWeight: FontWeightManager.semiBold,
                  color: ColorManager.textColor2,
                ),
                SizedBox(
                  height: HeightSized.s1,
                ),
                DefaultText(
                    color: ColorManager.textColor1,
                    text: Strings.createAccount,
                    fontSize: FontSized.fs14,
                    fontWeight: FontWeightManager.semiBold),

                SizedBox(
                  height: HeightSized.s6,
                ),
                DefaultText(
                    text: Strings.fullName,
                    color: ColorManager.textColor1,
                    fontSize: FontSized.fs16,
                    fontWeight: FontWeightManager.medium),
                DefaultTextFormFiled(
                    controller: name,
                    textInputType: TextInputType.name,
                    obscureText: false,
                    prefixIcon: Icons.person),
                SizedBox(
                  height: HeightSized.sh5,
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
                  height:HeightSized.sh5,
                ),
                DefaultText(
                    text: Strings.phoneNumber,
                    color: ColorManager.textColor1,
                    fontSize: FontSized.fs16,
                    fontWeight: FontWeightManager.medium),
                DefaultTextFormFiled(
                    controller: phone,
                    textInputType: TextInputType.phone,
                    obscureText: false,
                    prefixIcon: Icons.phone_android_outlined),
                SizedBox(
                  height:HeightSized.sh5,
                ),
                DefaultText(
                    text:Strings.password,
                    color: ColorManager.textColor1,
                    fontSize: FontSized.fs16,
                    fontWeight: FontWeightManager.medium),
                DefaultTextFormFiled(
                    controller:password,
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                    prefixIcon: Icons.lock),
                SizedBox(height: HeightSized.s2),
                DefaultButton(text:Strings.signin,
                  onPressed: () {

                  },
                  color: ColorManager.primary,
                ),
                SizedBox(
                  height: HeightSized.s5,
                ),
              ],
            ),
          ),

        ],
      ),

    );
  }
}
