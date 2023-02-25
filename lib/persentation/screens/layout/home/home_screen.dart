import 'package:flutter/material.dart';
import 'package:inovest/data/models/deals_model.dart';
import 'package:inovest/persentation/resources/colors.dart';
import 'package:inovest/persentation/resources/fonts.dart';
import 'package:inovest/persentation/resources/images.dart';
import 'package:inovest/persentation/resources/strings.dart';
import 'package:inovest/persentation/resources/values.dart';
import 'package:inovest/persentation/screens/layout/home/details_screen.dart';
import 'package:inovest/persentation/screens/layout/top10.dart';
import 'package:inovest/persentation/widget/build_divider.dart';
import 'package:inovest/persentation/widget/default_text.dart';
import 'package:inovest/persentation/widget/navigator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigators.navigateTo(context, Top10());
              },
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(
                  top: HeightSized.s2,
                  left: HeightSized.s2,
                  right: HeightSized.s2,
                ),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DefaultText(
                      text: Strings.startNowDeal,
                      fontWeight: FontWeightManager.semiBold,
                      fontSize: FontSized.fs16,
                      color: ColorManager.textColor2,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(
                        Images.startInovest,
                        height: HeightSized.s25,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            MDivider(
                color: ColorManager.black,
                height: HeightSized.sh3,
                vertical: HeightSized.s1,
                horizontal: 0),
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.only(bottom: HeightSized.s9),
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(
                      vertical: HeightSized.s1,
                      horizontal: HeightSized.s2,
                    ),
                    height: HeightSized.s46,
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
                            deals[index].logo,
                            height: HeightSized.s20,
                            width: double.infinity,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        SizedBox(height: HeightSized.s3),
                        Row(
                          children: [
                            DefaultText(
                                text: "${Strings.companyName}:",
                                color: ColorManager.textColor,
                                fontSize: FontSized.fs14,
                                fontWeight: FontWeightManager.semiBold),
                            DefaultText(
                                text: "  ${deals[index].companyName}",
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
                                text: "  ${deals[index].industry}",
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
                                  text: " ${deals[index].val} ",
                                  style: buildTextStyle2(),
                                ),
                                TextSpan(
                                    text: Strings.forA,
                                    style: buildTextStyle1()),
                                TextSpan(
                                  text: " ${deals[index].percent} ",
                                  style: buildTextStyle2(),
                                ),
                                TextSpan(
                                    text: Strings.stake,
                                    style: buildTextStyle1()),
                              ]),
                        ),
                        SizedBox(height: HeightSized.s2),
                        InkWell(
                          onTap: (){
                            Navigators.navigateTo(context, DetailsScreen());
                          },
                          child: Row(
                            children: [
                              DefaultText(
                                  text: Strings.moreDe,
                                  color: ColorManager.primary,
                                  fontSize: FontSized.fs14,
                                  fontWeight: FontWeightManager.semiBold),
                            const  Spacer(),
                              Icon(Icons.arrow_forward_ios_sharp,color: ColorManager.primary,)
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: HeightSized.s1,
                  );
                },
                itemCount: deals.length)
          ],
        ),
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
