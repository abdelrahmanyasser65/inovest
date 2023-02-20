import 'package:flutter/material.dart';
import 'package:inovest/persentation/resources/fonts.dart';
import 'package:inovest/persentation/resources/values.dart';
import 'package:inovest/persentation/widget/default_text.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({Key? key, required this.onPressed, required this.text, required this.color, this.colorText=Colors.white,})
      : super(key: key);
  final Function() onPressed;
  final String text;
  final Color color;
  final Color colorText;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(HeightSized.s2),
        ),
      ),
      child: SizedBox(
        height: HeightSized.s6,
        width: double.infinity,
        child: Center(
          child: DefaultText(
            text: text,
            color: colorText,
            fontWeight: FontWeightManager.medium,
            fontSize: FontSized.fs16,
          ),
        ),
      ),
    );
  }
}
