import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:inovest/data/models/feed_model.dart';
import 'package:inovest/data/models/layout_model.dart';
import 'package:inovest/persentation/resources/colors.dart';
import 'package:inovest/persentation/resources/fonts.dart';
import 'package:inovest/persentation/resources/images.dart';
import 'package:inovest/persentation/resources/strings.dart';
import 'package:inovest/persentation/resources/values.dart';
import 'package:inovest/persentation/widget/default_text.dart';
import 'package:sizer/sizer.dart';
class AppLayout extends StatefulWidget {
  const AppLayout({Key? key}) : super(key: key);

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  int index=2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(

          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: HeightSized.s6),
                  height: 33.h,
                  color: ColorManager.primary,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 14.h,

                        margin: EdgeInsets.symmetric(
                            horizontal: HeightSized.s1
                        ),

                        decoration:const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(image:AssetImage(Images.profile,),

                            )
                        ),
                      ),
                      Text(
                        Strings.userName,
                        style: TextStyle(
                          fontSize: FontSized.fs18,
                          fontWeight: FontWeightManager.bold,
                          color: ColorManager.white,
                        ),
                      ),
                      Text(
                        "abdelrahmanyasser3065@gmail.com",
                        style: TextStyle(
                            color: ColorManager.white,
                            fontWeight: FontWeightManager.medium),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: HeightSized.s1),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {

                      },
                      child: ListTile(
                        leading: Icon(drawerIcons[index],color: ColorManager.primary,),
                        title: Text(drawerString[index],style: TextStyle(
                          fontSize: FontSized.fs14,
                          fontWeight: FontWeightManager.medium
                        ),),
                      ),
                    ),
                    itemCount: drawerString.length,
                  ),
                ),
              ],
            ),
          )),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
     title:
        DefaultText(
            text: titles[index],
            color: ColorManager.primary,
            fontSize: FontSized.fs20,
            fontWeight: FontWeightManager.bold),
        leading: Builder(
          builder: (context){
            return   InkWell(
              onTap: (){
                Scaffold.of(context)
                    .openDrawer();
              },
              child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: HeightSized.s1
                ),

                decoration:const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image:AssetImage(Images.profile,),fit: BoxFit.cover)
                ),
              ),
            );
          }


        ),

      ),
      extendBody: true,
      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: ColorManager.primary,
        color: ColorManager.white,
        height: 60,
        index: index,
        items: [

          Icon(icons[0],
            color: index==0?Colors.white:ColorManager.grey,
          ),
          Icon(icons[1],
            color: index==1?Colors.white:ColorManager.grey,
          ),
          Icon(icons[2],
            color: index==2?Colors.white:ColorManager.grey,
          ),
          Icon(icons[3],
            color: index==3?Colors.white:Colors.grey,
          ),
          Icon(icons[4],
            color: index==4?Colors.white:Colors.grey,
          ),
        ],
        onTap: (val){
          setState(() {
            index=val;
          });
        },
      ),
    );
  }
}
