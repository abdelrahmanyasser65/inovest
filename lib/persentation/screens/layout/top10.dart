import 'package:flutter/material.dart';
import 'package:inovest/data/models/layout_model.dart';
import 'package:inovest/persentation/resources/colors.dart';
import 'package:inovest/persentation/resources/fonts.dart';
import 'package:inovest/persentation/resources/strings.dart';
import 'package:inovest/persentation/resources/values.dart';
import 'package:inovest/persentation/widget/default_text.dart';

class Top10 extends StatefulWidget {
  const Top10({Key? key}) : super(key: key);

  @override
  State<Top10> createState() => _Top10State();
}

class _Top10State extends State<Top10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
            padding: EdgeInsets.only(
              left: HeightSized.s3
            ),
            child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child:const Icon(Icons.arrow_back_ios))),
        toolbarHeight: HeightSized.s10,
        backgroundColor: ColorManager.primary,
        title: DefaultText(text: Strings.topTen,
            color: ColorManager.white,
            fontSize: FontSized.fs16,
            fontWeight: FontWeightManager.semiBold),
      ),
      body: ListView.separated(
        padding: EdgeInsets.symmetric(
          vertical: HeightSized.s2
        ),
        physics:const BouncingScrollPhysics(),
          itemBuilder: (context,index){
          return  Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              vertical: HeightSized.s2,
              horizontal: HeightSized.s2,
            ),

            decoration: BoxDecoration(
              color: ColorManager.black.withOpacity(0.05),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.only(
                right: HeightSized.s2,
                left: HeightSized.s2,
                top: HeightSized.s2,
                bottom: HeightSized.s1
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    topImage[index],
                    height: HeightSized.s20,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: HeightSized.s3),
                DefaultText(
                    text: Strings.top,
                    color: ColorManager.textColor,
                    fontSize: FontSized.fs14,
                    fontWeight: FontWeightManager.semiBold),
              ],
            ),
          );
          },
          separatorBuilder: (context,index){
          return  SizedBox();
          },
          itemCount: topImage.length),
    );
  }


}
