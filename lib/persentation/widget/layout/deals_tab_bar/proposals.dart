import 'package:flutter/material.dart';
import 'package:inovest/data/models/deals_model.dart';
import 'package:inovest/persentation/resources/colors.dart';
import 'package:inovest/persentation/resources/fonts.dart';
import 'package:inovest/persentation/resources/images.dart';
import 'package:inovest/persentation/resources/strings.dart';
import 'package:inovest/persentation/resources/values.dart';
import 'package:inovest/persentation/widget/build_divider.dart';
import 'package:inovest/persentation/widget/default_text.dart';

class MyProposals extends StatefulWidget {
  const MyProposals({Key? key}) : super(key: key);

  @override
  State<MyProposals> createState() => _MyProposalsState();
}

class _MyProposalsState extends State<MyProposals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [

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
                  return
                    Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(
                      vertical: HeightSized.s1,
                      horizontal: HeightSized.s2,
                    ),
                    height: HeightSized.s20,
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
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                deals[index].logo,
                                height: HeightSized.s10,
                                width: MediaQuery.of(context).size.width*0.2,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            SizedBox(width: 15,),
                            Column(
                              children: [
                              Row(
                                children: [
                                  DefaultText(
                                      text: "${Strings.companyName}:",
                                      color: ColorManager.textColor,
                                      fontSize: FontSized.fs8,
                                      fontWeight: FontWeightManager.semiBold),
                                  DefaultText(
                                      text: "  ${deals[index].companyName}",
                                      color: ColorManager.primary,
                                      fontSize: FontSized.fs8,
                                      fontWeight: FontWeightManager.bold),
                                ],
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    DefaultText(
                                        text: "${Strings.industry}:",
                                        color: ColorManager.textColor,
                                        fontSize: FontSized.fs8,
                                        fontWeight: FontWeightManager.bold),
                                    DefaultText(
                                        text: "  ${deals[index].industry}",
                                        color: ColorManager.primary,
                                        fontSize: FontSized.fs8,
                                        fontWeight: FontWeightManager.bold),


                                  ],
                                ),

                              ],
                            ),


                          ],
                        ),

                        //industry
                        SizedBox(height: HeightSized.s2),
                        InkWell(
                          onTap: (){
                            //to details screen
                          },
                          child: Row(
                            children: [
                              DefaultText(
                                  text: 'view my offer',
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
