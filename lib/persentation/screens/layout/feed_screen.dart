import 'package:flutter/material.dart';
import 'package:inovest/persentation/resources/colors.dart';
import 'package:inovest/persentation/resources/fonts.dart';
import 'package:inovest/persentation/resources/images.dart';
import 'package:inovest/persentation/resources/strings.dart';
import 'package:inovest/persentation/resources/values.dart';
import 'package:inovest/persentation/widget/default_text.dart';
class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: ColorManager.white,
      body: ListView(
        children: [
         InkWell(
           onTap: (){
             //go to top ten deals
           },
           child: Container(
             width: double.infinity,
             margin: EdgeInsets.symmetric(
               vertical: HeightSized.s4,
               horizontal: HeightSized.s2
             ),
             decoration:const BoxDecoration(
               borderRadius: BorderRadius.only(
                 bottomLeft: Radius.circular(25),
                 bottomRight: Radius.circular(25),
               )
             ),
             child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 DefaultText(
                   text: Strings.topTen,
                   fontWeight: FontWeightManager.semiBold,
                     fontSize: FontSized.fs16,
                   color: ColorManager.textColor2,
                 ),

                 ClipRRect(

                   borderRadius: BorderRadius.circular(25),
                   child: Image.asset(Images.topDeals,
                     height:HeightSized.s25,
                     width: double.infinity,
                     fit: BoxFit.cover,),
                 )
               ],
             ),
           ),
         )
        ],
      ),
    );
  }
}
