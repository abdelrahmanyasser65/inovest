import 'package:flutter/material.dart';
import 'package:inovest/persentation/resources/colors.dart';
import 'package:inovest/persentation/resources/fonts.dart';
import 'package:inovest/persentation/resources/strings.dart';
import 'package:inovest/persentation/resources/values.dart';
import 'package:inovest/persentation/widget/auth/default_textform.dart';
import 'package:inovest/persentation/widget/default_button.dart';
import 'package:inovest/persentation/widget/default_text.dart';
import 'package:inovest/persentation/widget/layout/type_adds.dart';

class SecondTabBar extends StatelessWidget {
   SecondTabBar({Key? key}) : super(key: key);
  final TextEditingController proNameController=TextEditingController();
  final TextEditingController descriptionController=TextEditingController();
  final TextEditingController phoneController=TextEditingController();
  final TextEditingController emailController=TextEditingController();
   final TextEditingController priceController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics:const BouncingScrollPhysics(),
      padding: EdgeInsets.only(
          right: HeightSized.s2,
          left: HeightSized.s2,
          bottom: HeightSized.s12
      ),
      children: [
        const  TypeAdds(text: Strings.addAds),
        InkWell(
          onTap: (){
            //image picker
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(Icons.add_a_photo,color: ColorManager.primary,),
              SizedBox(width: HeightSized.s2,),
              DefaultText(text: Strings.addPhotoP,
                  color: ColorManager.primary,
                  fontSize: FontSized.fs14,
                  fontWeight: FontWeightManager.semiBold)
            ],
          ),
        ),
        SizedBox(height: HeightSized.s4,),
        DefaultText(
            text: Strings.proName,
            color: ColorManager.textColor,
            fontSize: FontSized.fs14,
            fontWeight: FontWeightManager.semiBold),
        DefaultTextFormFiled(
          controller: proNameController,
          textInputType: TextInputType.text,
          obscureText: false,
        ),

        SizedBox(height: HeightSized.s1,),
        DefaultText(
            text: Strings.price,
            color: ColorManager.textColor,
            fontSize: FontSized.fs14,
            fontWeight: FontWeightManager.semiBold),
        DefaultTextFormFiled(
          controller: priceController,
          prefixIcon: Icons.attach_money_outlined,
          textInputType: TextInputType.number,
          obscureText: false,
          hint: Strings.hintPrice,
        ),

        SizedBox(height: HeightSized.s1,),
        DefaultText(
            text: Strings.phone,
            color: ColorManager.textColor,
            fontSize: FontSized.fs14,
            fontWeight: FontWeightManager.semiBold),
        DefaultTextFormFiled(
          controller: phoneController,
          hint: Strings.hintPhone,
          textInputType: TextInputType.number,
          obscureText: false,
          prefixIcon: Icons.phone_android_sharp,
        ),

        SizedBox(height: HeightSized.s1,),
        DefaultText(
            text: Strings.email,
            color: ColorManager.textColor,
            fontSize: FontSized.fs14,
            fontWeight: FontWeightManager.semiBold),
        DefaultTextFormFiled(
          controller: emailController,
          hint: Strings.hintEmail,
          textInputType: TextInputType.emailAddress,
          obscureText: false,
          prefixIcon: Icons.email,
        ),

        SizedBox(height: HeightSized.s1,),
        DefaultText(
            text: Strings.description,
            color: ColorManager.textColor,
            fontSize: FontSized.fs14,
            fontWeight: FontWeightManager.semiBold),
        DefaultTextFormFiled(
          controller: descriptionController,
          textInputType: TextInputType.text,
          obscureText: false,
          maxLines: 4,
        ),

        SizedBox(height: HeightSized.s2,),
        DefaultButton(
          onPressed: () {
            //add post
          }, text:Strings.post,
          color: ColorManager.primary,
        ),
      ],
    );
  }
}
