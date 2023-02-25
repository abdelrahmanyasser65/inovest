import 'package:flutter/material.dart';
import 'package:inovest/data/models/feed_model.dart';
import 'package:inovest/persentation/resources/colors.dart';
import 'package:inovest/persentation/resources/fonts.dart';
import 'package:inovest/persentation/resources/images.dart';
import 'package:inovest/persentation/resources/strings.dart';
import 'package:inovest/persentation/resources/values.dart';
import 'package:inovest/persentation/screens/layout/top10.dart';
import 'package:inovest/persentation/widget/build_divider.dart';
import 'package:inovest/persentation/widget/default_text.dart';
import 'package:inovest/persentation/widget/layout/feed_icons.dart';
import 'package:inovest/persentation/widget/navigator.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        physics:const BouncingScrollPhysics(),
        child: Column(
          children: [
           InkWell(
             onTap: (){
               Navigators.navigateTo(context, Top10());
             },
             child: Container(
               width: double.infinity,
               margin: EdgeInsets.only(
                 top: HeightSized.s4,
                 left: HeightSized.s2,
                 right: HeightSized.s2,
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
                   ),
                 ],
               ),
             ),

           ),
            MDivider(
                color: ColorManager.black,
                height: HeightSized.sh8,
                vertical: HeightSized.s2,
                horizontal: 0),

           ListView.separated(
             shrinkWrap: true,
             physics:const NeverScrollableScrollPhysics(),
             padding: EdgeInsets.only(
               bottom: HeightSized.s9
             ),
               itemBuilder: (context,index){
                 return Container(
                   margin: EdgeInsets.symmetric(
                       horizontal: HeightSized.s1
                   ),
                  width: double.infinity,

                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Row(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Container(
                             margin: EdgeInsets.only(
                               right: HeightSized.s1
                             ),
                             width: HeightSized.s6,
                             height: HeightSized.s6,
                             decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 image: DecorationImage(
                                     image:AssetImage(posts[index].profileImage,),
                                     fit: BoxFit.cover,)
                             ),
                           ),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               DefaultText(
                                   text: posts[index].name,
                                   color: ColorManager.textColor2,
                                   fontSize: FontSized.fs14,
                                   fontWeight: FontWeightManager.semiBold),
                               SizedBox(height: HeightSized.sh3,),
                               DefaultText(
                                   text: posts[index].date,
                                   color: ColorManager.textColor1,
                                   fontSize: FontSized.fs12,
                                   fontWeight: FontWeightManager.medium)
                             ],
                           ),
                          const Spacer(),
                           IconButton(onPressed: (){
                             //more option
                           }, icon:const  Icon(Icons.more_vert_rounded))
                         ],
                       ),
                       SizedBox(
                         height: HeightSized.s2,
                       ),
                       DefaultText(
                           text: posts[index].description,
                           color: ColorManager.black,
                           fontSize: FontSized.fs14,
                           fontWeight: FontWeightManager.medium),
                       SizedBox(
                         height: HeightSized.s2,
                       ),
                    posts[index].image.isNotEmpty?   Padding(
                         padding: EdgeInsets.only(
                           bottom: HeightSized.s3,
                         ),
                         child: Image.asset(posts[index].image,
                         height: HeightSized.s20,
                         width: double.infinity,
                         ),
                       ):Container(),

                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           FeedIcons(icon: Icons.favorite, number: posts[index].likes),
                           FeedIcons(icon: Icons.mode_comment_outlined, number:posts[index].comment),
                           FeedIcons(icon: Icons.repeat, number:posts[index].repeat),

                         ],
                       ),
                     ],
                   ),
                 );
               },
               separatorBuilder: (context,index){
                 return MDivider(
                     color: ColorManager.black,
                     height: HeightSized.sh8,
                     vertical: HeightSized.s1,
                     horizontal: 0);
               },
               itemCount: posts.length)
          ],
        ),
      ),
    );
  }
}
