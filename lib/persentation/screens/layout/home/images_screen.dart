import 'package:flutter/material.dart';
import 'package:inovest/data/models/deals_model.dart';
import 'package:inovest/persentation/resources/colors.dart';
import 'package:inovest/persentation/resources/fonts.dart';
import 'package:inovest/persentation/resources/strings.dart';
import 'package:inovest/persentation/resources/values.dart';
import 'package:inovest/persentation/widget/default_text.dart';
class ImagesScreen extends StatelessWidget {
  const ImagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title:  DefaultText(
            text: Strings.moreImage,
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
        body:
        ListView(
          padding: EdgeInsets.only(
            left: HeightSized.s2,
            right: HeightSized.s2,
            top: HeightSized.s5,
            bottom: HeightSized.s5
          ),
          children: [
DefaultText(
    text: "${detailsText[0]}: ",
    color: ColorManager.primary,
    fontSize: FontSized.fs14,
    fontWeight: FontWeightManager.semiBold),
            SizedBox(height: HeightSized.s2,),
            Image.asset(detailsImages[0],
            height: HeightSized.s30,
              width: double.infinity,

            ),
            SizedBox(
              height: HeightSized.s4,
            ),
            DefaultText(
                text: "${detailsText[1]}: ",
                color: ColorManager.primary,
                fontSize: FontSized.fs14,
                fontWeight: FontWeightManager.semiBold),
            Image.asset(detailsImages[1],
              height: HeightSized.s30,
              width: double.infinity,

            ),

            SizedBox(
              height: HeightSized.s4,
            ),
            DefaultText(
                text: "${detailsText[2]}: ",
                color: ColorManager.primary,
                fontSize: FontSized.fs14,
                fontWeight: FontWeightManager.semiBold),
            SizedBox(
              height: HeightSized.s4,
            ),
            Image.asset(detailsImages[2],
              height: HeightSized.s30,
              width: double.infinity,

            ),
            SizedBox(
              height: HeightSized.s4,
            ),
            DefaultText(
                text: "${detailsText[3]}: ",
                color: ColorManager.primary,
                fontSize: FontSized.fs14,
                fontWeight: FontWeightManager.semiBold),
            SizedBox(
              height: HeightSized.s4,
            ),
            Image.asset(detailsImages[3],
              height: HeightSized.s30,
              width: double.infinity,

            ),
          ],
        )


    );
  }
}
