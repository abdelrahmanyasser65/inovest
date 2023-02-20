import 'package:flutter/material.dart';
import 'package:inovest/persentation/resources/colors.dart';
class BuildDivider extends StatelessWidget {
  const BuildDivider({Key? key, required this.height}) : super(key: key);
final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color:  ColorManager.primary,
          borderRadius: BorderRadius.circular(5)
      ),
      height: height,
    );
  }
}
