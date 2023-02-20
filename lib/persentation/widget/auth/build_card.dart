import 'package:flutter/material.dart';
import 'package:inovest/persentation/resources/colors.dart';
import 'package:inovest/persentation/resources/fonts.dart';
import 'package:inovest/persentation/resources/values.dart';
import 'package:inovest/persentation/widget/default_text.dart';
import 'package:sizer/sizer.dart';
class BuildCard extends StatelessWidget {

  final String text;
  final String image;

  const BuildCard({super.key, required this.text, required this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      height:7.h,
      width: double.infinity,
      decoration: BoxDecoration(
        // color: ColorManager.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
              width: 1.5,
              color: ColorManager.grey.withOpacity(0.7)
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image,
            height: HeightSized.s4,),
          SizedBox(width: HeightSized.s1,),
          DefaultText(
              text: text,
              color: ColorManager.textColor1,
              fontSize: FontSized.fs14,
              fontWeight: FontWeightManager.semiBold)
        ],
      ),
    );
  }
}
