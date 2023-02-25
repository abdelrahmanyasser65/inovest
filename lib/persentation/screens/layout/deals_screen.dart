import 'package:flutter/material.dart';
import 'package:inovest/persentation/resources/colors.dart';
import 'package:inovest/persentation/resources/fonts.dart';
import 'package:inovest/persentation/resources/values.dart';
import 'package:inovest/persentation/widget/layout/deals_tab_bar/offers.dart';
import 'package:inovest/persentation/widget/layout/deals_tab_bar/proposals.dart';
class DealsScreen extends StatefulWidget {
  const DealsScreen({Key? key}) : super(key: key);

  @override
  State<DealsScreen> createState() => _DealsScreenState();
}

class _DealsScreenState extends State<DealsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: HeightSized.s2,
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
            Tab(icon: Icon(Icons.request_page,size: HeightSized.s3,),text: 'Your offers',),
            Tab(icon: Icon(Icons.local_offer_outlined,size: HeightSized.s3,),text: 'offers',),
          ],
        ),
      ),
      body:  const TabBarView(
        physics: BouncingScrollPhysics(),
        children: [
          MyProposals(),
          MyOffers()
        ],
      ),
    ));
  }
}
