import 'package:flutter/material.dart';
import 'package:inovest/persentation/resources/colors.dart';
import 'package:inovest/persentation/resources/fonts.dart';
import 'package:inovest/persentation/resources/strings.dart';
import 'package:inovest/persentation/resources/values.dart';
import 'package:inovest/persentation/widget/auth/default_textform.dart';
import 'package:inovest/persentation/widget/default_button.dart';
import 'package:inovest/persentation/widget/default_text.dart';
import 'package:inovest/persentation/widget/layout/type_adds.dart';

class ThirdTabBar extends StatelessWidget {
  ThirdTabBar({Key? key}) : super(key: key);
  final TextEditingController nameController=TextEditingController();
  final TextEditingController phoneController=TextEditingController();
  final TextEditingController emailController=TextEditingController();
  final TextEditingController idController=TextEditingController();
  final TextEditingController companyNameController=TextEditingController();
  final TextEditingController industryController=TextEditingController();
  final TextEditingController financialController=TextEditingController();
  final TextEditingController workPlanController=TextEditingController();
  final TextEditingController marketingController=TextEditingController();
  final TextEditingController investPlanController=TextEditingController();
  final TextEditingController offerController=TextEditingController();
  final TextEditingController valueController=TextEditingController();
  final TextEditingController ratioController=TextEditingController();
  final TextEditingController commentController=TextEditingController();
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
        const  TypeAdds(text: Strings.addDeal),

        //name
        DefaultText(
            text: Strings.fullName,
            color: ColorManager.textColor,
            fontSize: FontSized.fs14,
            fontWeight: FontWeightManager.semiBold),
        DefaultTextFormFiled(
          controller: nameController,
          textInputType: TextInputType.text,
          obscureText: false,
        ),
        //phone
        SizedBox(height: HeightSized.s1,),
        DefaultText(
            text: Strings.phone,
            color: ColorManager.textColor,
            fontSize: FontSized.fs14,
            fontWeight: FontWeightManager.semiBold),
        DefaultTextFormFiled(
          controller: phoneController,
          prefixIcon: Icons.phone_android_sharp,
          textInputType: TextInputType.number,
          obscureText: false,
          hint: Strings.hintPhone,
        ),
        //email
        SizedBox(height: HeightSized.s1,),
        DefaultText(
            text: Strings.email,
            color: ColorManager.textColor,
            fontSize: FontSized.fs14,
            fontWeight: FontWeightManager.semiBold),
        DefaultTextFormFiled(
          controller: emailController,
          prefixIcon: Icons.email,
          textInputType: TextInputType.emailAddress,
          obscureText: false,
          hint: Strings.hintEmail,
        ),
        //id
        SizedBox(height: HeightSized.s1,),
        DefaultText(
            text: Strings.id,
            color: ColorManager.textColor,
            fontSize: FontSized.fs14,
            fontWeight: FontWeightManager.semiBold),
        DefaultTextFormFiled(
          controller: idController,
          textInputType: TextInputType.number,
          obscureText: false,
          isIcon:false,
          hint: Strings.hintId,
        ),
        //idImage
        SizedBox(height: HeightSized.s1,),
        InkWell(
          onTap: (){
            //image picker
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(Icons.add_a_photo,color: ColorManager.primary,),
              SizedBox(width: HeightSized.s2,),
              DefaultText(text: Strings.nationalIdP,
                  color: ColorManager.primary,
                  fontSize: FontSized.fs14,
                  fontWeight: FontWeightManager.semiBold)
            ],
          ),
        ),
        SizedBox(height: HeightSized.s4,),
        //companyName
        DefaultText(
            text: Strings.companyName,
            color: ColorManager.textColor,
            fontSize: FontSized.fs14,
            fontWeight: FontWeightManager.semiBold),
        DefaultTextFormFiled(
          controller: companyNameController,
          textInputType: TextInputType.text,
          obscureText: false,
          prefixIcon: Icons.business_sharp,
          hint: Strings.hintNameC,
        ),
        //industry
        SizedBox(height: HeightSized.s1,),
        DefaultText(
            text: Strings.industry,
            color: ColorManager.textColor,
            fontSize: FontSized.fs14,
            fontWeight: FontWeightManager.semiBold),
        DefaultTextFormFiled(
          controller: industryController,
          textInputType: TextInputType.text,
          obscureText: false,
          hint: Strings.hintIndustry,
          isIcon:false
        ),
        //logoImage
        SizedBox(height: HeightSized.s1,),
        InkWell(
          onTap: (){
            //image picker
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(Icons.add_a_photo,color: ColorManager.primary,),
              SizedBox(width: HeightSized.s2,),
              DefaultText(text: Strings.logoP,
                  color: ColorManager.primary,
                  fontSize: FontSized.fs14,
                  fontWeight: FontWeightManager.semiBold)
            ],
          ),
        ),
        SizedBox(height: HeightSized.s4,),
        //financial
        DefaultText(
            text: Strings.financialS,
            color: ColorManager.textColor,
            fontSize: FontSized.fs14,
            fontWeight: FontWeightManager.semiBold),
        DefaultTextFormFiled(
          controller: financialController,
          textInputType: TextInputType.text,
          obscureText: false,
          hint: Strings.hintFinancial,
          isIcon: false,
        ),
        //workPlan
        SizedBox(height: HeightSized.s1,),
        DefaultText(
            text: Strings.workPlan,
            color: ColorManager.textColor,
            fontSize: FontSized.fs14,
            fontWeight: FontWeightManager.semiBold),
        DefaultTextFormFiled(
          controller: workPlanController,
          textInputType: TextInputType.text,
          isIcon: false,
          obscureText: false,
          hint: Strings.hintWorkPlan,
        ),
        //marketing
        SizedBox(height: HeightSized.s1,),
        DefaultText(
            text: Strings.marketingPlan,
            color: ColorManager.textColor,
            fontSize: FontSized.fs14,
            fontWeight: FontWeightManager.semiBold),
        DefaultTextFormFiled(
          controller: marketingController,
          textInputType: TextInputType.text,
          obscureText: false,
          hint: Strings.hintMPlan,
          isIcon:false
        ),
        //investPlan
        SizedBox(height: HeightSized.s1,),
        DefaultText(
            text: Strings.investPlan,
            color: ColorManager.textColor,
            fontSize: FontSized.fs14,
            fontWeight: FontWeightManager.semiBold),
        DefaultTextFormFiled(
          isIcon:false,
          controller: investPlanController,
          textInputType: TextInputType.text,
          obscureText: false,
          hint: Strings.hintInvest,
        ),
        //doc
        SizedBox(height: HeightSized.s1,),
        InkWell(
          onTap: (){
            //image picker
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(Icons.add_a_photo,color: ColorManager.primary,),
              SizedBox(width: HeightSized.s2,),
              DefaultText(text: Strings.commReg,
                  color: ColorManager.primary,
                  fontSize: FontSized.fs14,
                  fontWeight: FontWeightManager.semiBold)
            ],
          ),
        ),
        SizedBox(height: HeightSized.s3,),
        InkWell(
          onTap: (){
            //image picker
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(Icons.add_a_photo,color: ColorManager.primary,),
              SizedBox(width: HeightSized.s2,),
              DefaultText(text: Strings.taxRep,
                  color: ColorManager.primary,
                  fontSize: FontSized.fs14,
                  fontWeight: FontWeightManager.semiBold)
            ],
          ),
        ),
        SizedBox(height: HeightSized.s3,),
        InkWell(
          onTap: (){
            //image picker
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(Icons.add_a_photo,color: ColorManager.primary,),
              SizedBox(width: HeightSized.s2,),
              DefaultText(text: Strings.operatingPer,
                  color: ColorManager.primary,
                  fontSize: FontSized.fs14,
                  fontWeight: FontWeightManager.semiBold)
            ],
          ),
        ),
        SizedBox(height: HeightSized.s3,),
        InkWell(
          onTap: (){
            //image picker
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(Icons.add_a_photo,color: ColorManager.primary,),
              SizedBox(width: HeightSized.s2,),
              DefaultText(text: Strings.legalD,
                  color: ColorManager.primary,
                  fontSize: FontSized.fs14,
                  fontWeight: FontWeightManager.semiBold)
            ],
          ),
        ),
        SizedBox(height: HeightSized.s2,),
        DefaultText(
            text: Strings.legalType,
            color: ColorManager.textColor,
            fontSize: FontSized.fs12,
            fontWeight: FontWeightManager.medium),
        SizedBox(height: HeightSized.s4,),
        //offer
        DefaultText(
            text: Strings.offerD,
            color: ColorManager.textColor,
            fontSize: FontSized.fs14,
            fontWeight: FontWeightManager.semiBold),
        DefaultTextFormFiled(
          controller: offerController,
          textInputType: TextInputType.text,
          obscureText: false,
          hint: Strings.hintOffer,
          maxLines: 3,
          isIcon: false,
        ),
        //value
        SizedBox(height: HeightSized.s1,),
        DefaultText(
            text: Strings.finaValue,
            color: ColorManager.textColor,
            fontSize: FontSized.fs14,
            fontWeight: FontWeightManager.semiBold),
        DefaultTextFormFiled(
          prefixIcon: Icons.attach_money_rounded,
          controller: valueController,
          textInputType: TextInputType.number,
          obscureText: false,
          hint: Strings.hintFianc,
        ),
        SizedBox(height: HeightSized.s1,),
        DefaultText(
            text: Strings.investRatio,
            color: ColorManager.textColor,
            fontSize: FontSized.fs14,
            fontWeight: FontWeightManager.semiBold),
        DefaultTextFormFiled(
          prefixIcon: Icons.percent_outlined,
          controller: ratioController,
          textInputType: TextInputType.number,
          obscureText: false,
          hint: Strings.hintRatio,
        ),
        SizedBox(height: HeightSized.s1,),
        DefaultText(
            text: Strings.addComment,
            color: ColorManager.textColor,
            fontSize: FontSized.fs14,
            fontWeight: FontWeightManager.semiBold),
        DefaultTextFormFiled(
         isIcon:false,
          controller: commentController,
          textInputType: TextInputType.text,
          obscureText: false,
          maxLines: 5,
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
