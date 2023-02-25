import 'package:flutter/material.dart';
import 'package:inovest/persentation/resources/colors.dart';
import 'package:inovest/persentation/resources/fonts.dart';
import 'package:inovest/persentation/resources/values.dart';
import 'package:inovest/persentation/widget/layout/post_tab_bar/sec_tab_bar.dart';
import 'package:inovest/persentation/widget/layout/post_tab_bar/thir_tab_bar.dart';
import '../../widget/layout/post_tab_bar/first_tab_bar.dart';
class AddedScreen extends StatefulWidget {
  const AddedScreen({Key? key}) : super(key: key);

  @override
  State<AddedScreen> createState() => _AddedScreenState();
}

class _AddedScreenState extends State<AddedScreen> {
 @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: HeightSized.s2,
          backgroundColor: Colors.transparent,
         bottom: TabBar(
           indicatorColor: ColorManager.primary,
           labelColor: ColorManager.primary,
           unselectedLabelColor: ColorManager.grey,
           labelStyle: TextStyle(
             fontSize: FontSized.fs16,
             fontWeight: FontWeightManager.semiBold,
           ),
           unselectedLabelStyle: TextStyle(
             fontSize: FontSized.fs14,
             fontWeight: FontWeightManager.medium,
           ),
           tabs: [
            Tab(icon: Icon(Icons.post_add_sharp,size: HeightSized.s4,),text: 'Post',),
            Tab(icon: Icon(Icons.wb_twighlight,size: HeightSized.s4,),text: 'Deal',),
            Tab(icon: Icon(Icons.add_business_rounded,size: HeightSized.s4,),text: 'Ads',),
           ],
         ),
        ),

        body: TabBarView(
          physics:const BouncingScrollPhysics(),
          children: [
            FirstTabBar(),
            ThirdTabBar(),
            SecondTabBar(),
          ],
        ),
      ),
    );
  }
}
