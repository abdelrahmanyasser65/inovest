import 'package:flutter/material.dart';
import 'package:inovest/data/models/deals_model.dart';
import 'package:inovest/persentation/resources/colors.dart';
import 'package:inovest/persentation/resources/fonts.dart';
import 'package:inovest/persentation/resources/images.dart';
import 'package:inovest/persentation/resources/strings.dart';
import 'package:inovest/persentation/resources/values.dart';

class Top10 extends StatefulWidget {
  const Top10({Key? key}) : super(key: key);

  @override
  State<Top10> createState() => _Top10State();
}
List<String> TopImages=[
  'assets/images/ficon1.jpg'
  'assets/images/startup0.jfif'
  'assets/images/startup1.jfif'
  'assets/images/startup2.jfif'
  'assets/images/startup3.jfif'
  'assets/images/startup4.jfif'
  'assets/images/startup5.jpg'
  'assets/images/startup6.png'
  'assets/images/startup7.jfif'
  'assets/images/startup8.jfif'
];
class _Top10State extends State<Top10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Container(
            padding: EdgeInsets.all(15),
            child:  Image.asset('assets/images/top10.png',height: MediaQuery.of(context).size.height*0.3,),
          ),
            Text('top 10 deals this month'),
            Container(
              height: MediaQuery.of(context).size.height*0.6,
              child: ListView.builder(
                  padding: EdgeInsets.only(bottom: HeightSized.s9),
                  itemBuilder: (context, index) {
                    return Container(
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
                        ],
                      ),
                    );
                  },

                  itemCount:10),
            )
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
