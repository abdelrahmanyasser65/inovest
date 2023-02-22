import 'package:flutter/material.dart';
import 'package:inovest/persentation/resources/colors.dart';
import 'package:inovest/persentation/resources/fonts.dart';
import 'package:inovest/persentation/resources/values.dart';
import 'package:inovest/persentation/widget/default_text.dart';
class FeedIcons extends StatelessWidget {
  const FeedIcons({Key? key, required this.icon, required this.number}) : super(key: key);
final IconData icon;
final String number;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: HeightSized.s2
      ),
      height: HeightSized.s5,
      width: HeightSized.s12,
      decoration: BoxDecoration(
          color: ColorManager.primary,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon,color: ColorManager.white,),
          SizedBox(width:HeightSized.sh8,),
          DefaultText(
              text: number,
              color: ColorManager.white,
              fontSize: FontSized.fs14,
              fontWeight: FontWeightManager.medium)
        ],
      ),
    );
  }
}
