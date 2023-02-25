import 'package:flutter/material.dart';
import 'package:inovest/data/models/deals_model.dart';
import 'package:inovest/persentation/resources/colors.dart';
import 'package:inovest/persentation/resources/fonts.dart';
import 'package:inovest/persentation/resources/values.dart';
import 'package:inovest/persentation/widget/build_divider.dart';
import 'package:inovest/persentation/widget/default_text.dart';

class MyOffers extends StatefulWidget {
  const MyOffers({Key? key}) : super(key: key);

  @override
  State<MyOffers> createState() => _MyOffersState();
}

class _MyOffersState extends State<MyOffers> {
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
                  return InkWell(
                    onTap: (){

                    },
                    child: Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(
                        vertical: HeightSized.s1,
                        horizontal: HeightSized.s2,
                      ),
                      height: HeightSized.s14,
                      decoration: BoxDecoration(
                        color: ColorManager.black.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.only(
                          right: HeightSized.s2,
                          left: HeightSized.s2,
                      ),
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  DefaultText(text: 'offer from :', color: Colors.black, fontSize: FontSized.fs8, fontWeight: FontWeight.normal),
                                  DefaultText(text: 'Mr Mohamed ', color: Colors.black, fontSize: FontSized.fs10, fontWeight: FontWeight.bold)
                                ],
                              ),
                              SizedBox(height: HeightSized.s1,),
                              Row(
                                children: [
                                  DefaultText(text: 'project title :', color: Colors.black, fontSize: FontSized.fs8, fontWeight: FontWeight.normal),
                                  DefaultText(text: 'Crazy farm ', color: Colors.black, fontSize: FontSized.fs10, fontWeight: FontWeight.bold)
                                ],
                              ),
                              SizedBox(height: HeightSized.s1,),
                              Row(
                                children: [
                                  DefaultText(text: 'the offer:', color: Colors.black, fontSize: FontSized.fs10, fontWeight: FontWeight.normal),
                                  DefaultText(text: '50000\$ for 30% ', color: Colors.black, fontSize: FontSized.fs10, fontWeight: FontWeight.bold)
                                ],
                              )
                            ],
                          ),
                          DefaultText(text: 'Details', color: Colors.blue, fontSize: FontSized.fs14, fontWeight: FontWeight.bold),
                          Icon(Icons.arrow_forward_ios_rounded)
                        ],
                      ),
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
