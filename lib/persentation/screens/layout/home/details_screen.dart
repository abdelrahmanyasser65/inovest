import 'package:flutter/material.dart';
import 'package:inovest/data/models/deals_model.dart';
import 'package:inovest/persentation/resources/colors.dart';
import 'package:inovest/persentation/resources/fonts.dart';
import 'package:inovest/persentation/resources/images.dart';
import 'package:inovest/persentation/resources/strings.dart';
import 'package:inovest/persentation/resources/values.dart';
import 'package:inovest/persentation/screens/layout/home/images_screen.dart';
import 'package:inovest/persentation/widget/default_button.dart';
import 'package:inovest/persentation/widget/default_text.dart';
import 'package:inovest/persentation/widget/navigator.dart';
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title:  DefaultText(
          text: Strings.details,
          fontSize:  FontSized.fs18,
          fontWeight:  FontWeightManager.bold,
          color: ColorManager.primary,
        ),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,color: ColorManager.primary,),
        ),
      ),
      backgroundColor: ColorManager.white,
      body:ListView(

        padding:  EdgeInsets.only(
            left: HeightSized.s2,
            right: HeightSized.s2,
            top: HeightSized.s4,
          bottom: HeightSized.s4
        ),
        physics:const BouncingScrollPhysics(),
        children: [

          Stack(
            alignment: Alignment.bottomRight,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(Images.profile1),
              ),
              Container(
                margin: EdgeInsets.only(
                    bottom: HeightSized.s2,
                    right: HeightSized.s2
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorManager.black.withOpacity(0.5)
                ),
                child: IconButton(onPressed: (){
                  Navigators.navigateTo(context,const ImagesScreen());
                },
                    icon: Icon(Icons.add_photo_alternate_outlined,
                      color: ColorManager.white,)),
              ),
            ],
          ),
          SizedBox(height: HeightSized.s4),

          Row(
            children: [
              DefaultText(
                  text: "${Strings.companyName}:",
                  color: ColorManager.textColor,
                  fontSize: FontSized.fs14,
                  fontWeight: FontWeightManager.semiBold),
              DefaultText(
                  text: "  ${deals[0].companyName}",
                  color: ColorManager.primary,
                  fontSize: FontSized.fs14,
                  fontWeight: FontWeightManager.bold),
            ],
          ),
          SizedBox(height: HeightSized.s2),
          //industry
          Row(
            children: [
              DefaultText(
                  text: "${Strings.industry}:",
                  color: ColorManager.textColor,
                  fontSize: FontSized.fs14,
                  fontWeight: FontWeightManager.semiBold),
              DefaultText(
                  text: "  ${deals[0].industry}",
                  color: ColorManager.primary,
                  fontSize: FontSized.fs14,
                  fontWeight: FontWeightManager.bold),
            ],
          ),
          SizedBox(height: HeightSized.s2),
          RichText(
            text: TextSpan(
                text: "${Strings.offerD}: ",
                style: buildTextStyle1(),
                children: [
                  TextSpan(
                      text: Strings.dollar,
                      style: buildTextStyle1()),
                  TextSpan(
                    text: " ${deals[0].val} ",
                    style: buildTextStyle2(),
                  ),
                  TextSpan(
                      text: Strings.forA,
                      style: buildTextStyle1()),
                  TextSpan(
                    text: " ${deals[0].percent} ",
                    style: buildTextStyle2(),
                  ),
                  TextSpan(
                      text: Strings.stake,
                      style: buildTextStyle1()),
                ]),
          ),
          SizedBox(height: HeightSized.s2),
          SizedBox(height: HeightSized.s2),
          RichText(
            text: TextSpan(
                text: "${Strings.marketingPlan}: ",
                style: buildTextStyle1(),
                children: [
                  TextSpan(
                      text: Strings.workPlanD,
                      style: buildTextStyle2()),

                ]),
          ),
          SizedBox(height: HeightSized.s2),
          RichText(
            text: TextSpan(
                text: "${Strings.investPlan}: ",
                style: buildTextStyle1(),
                children: [
                  TextSpan(
                      text: Strings.workPlanD,
                      style: buildTextStyle2()),

                ]),
          ),
          SizedBox(height: HeightSized.s2),
          RichText(
            text: TextSpan(
                text: "${Strings.workPlan}: ",
                style: buildTextStyle1(),
                children: [
                  TextSpan(
                      text: Strings.workPlanD,
                      style: buildTextStyle2()),

                ]),
          ),
          SizedBox(height: HeightSized.s4),
          DefaultButton(onPressed: (){
           //go to daels
          },
            text:Strings.apply,
            color: ColorManager.primary,)
        ],
      ),
    );
  }
  TextStyle buildTextStyle2() {
    return TextStyle(
        color: ColorManager.primary,
        fontSize: FontSized.fs14,
        fontWeight: FontWeightManager.bold);
  }

  TextStyle buildTextStyle1() {
    return TextStyle(
        color: ColorManager.textColor,
        fontSize: FontSized.fs14,
        fontWeight: FontWeightManager.semiBold);
  }
}
