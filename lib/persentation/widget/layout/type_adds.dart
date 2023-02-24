import 'package:flutter/material.dart';
import 'package:inovest/persentation/resources/colors.dart';
import 'package:inovest/persentation/resources/fonts.dart';
import 'package:inovest/persentation/resources/values.dart';
import 'package:inovest/persentation/widget/default_text.dart';
class TypeAdds extends StatelessWidget {
  const TypeAdds({Key? key, required this.text}) : super(key: key);
final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: HeightSized.s10,
      decoration: BoxDecoration(
        color: ColorManager.black.withOpacity(0.04),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.only(
        top: HeightSized.s3,
        bottom: HeightSized.s4
      ),
      padding: EdgeInsets.symmetric(
          horizontal: HeightSized.s2,
          vertical: HeightSized.s4
      ),
      child: DefaultText(text:text,
          color: ColorManager.primary,
          fontSize: FontSized.fs16,
          fontWeight: FontWeightManager.semiBold),
    );
  }
}
