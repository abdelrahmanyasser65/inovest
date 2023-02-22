import 'package:flutter/material.dart';
import 'package:inovest/persentation/resources/colors.dart';
import 'package:inovest/persentation/resources/values.dart';
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


class MDivider extends StatelessWidget {
  final Color color;
  final double height;
  final double vertical;
  final double horizontal;

  const MDivider({super.key, required this.color, required this.height, required this.vertical, required this.horizontal});
  @override
  Widget build(BuildContext context) {
    return Container(
      height:height,
      color: color,
      margin: EdgeInsets.symmetric(
          vertical: vertical,
        horizontal: horizontal,
      ),
    );
  }
}

