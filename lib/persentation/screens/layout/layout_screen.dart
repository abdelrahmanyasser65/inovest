import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:inovest/data/models/layout_model.dart';
import 'package:inovest/persentation/resources/colors.dart';
import 'package:inovest/persentation/resources/fonts.dart';
import 'package:inovest/persentation/resources/images.dart';
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
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xff004e70), Color(0xff349dcb)],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 25, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 50,
                      backgroundImage: AssetImage(Images.profile,)
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Osama Mosa',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child:
                          Text(
                            'osama@gmail.com ',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),

                      )
                    ],
                  ),
                ),
              ),
              ListTile(
                selected: true,
                selectedColor: Colors.blueGrey,
                selectedTileColor: Colors.black.withOpacity(0.2),
                leading: Icon(
                  Icons.home,
                  color: Colors.blueGrey,
                  size: 30,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
                onTap: () {},
              ),
            Expanded(
                flex: 4,
                child: SizedBox()),
              Divider(
                height: 5,
                thickness: 3,
                color: Colors.black,
              ),
              ListTile(
                leading: Icon(
                  Icons.help_outline,
                  size: 30,
                ),
                title: const Text(
                  'Help & feedback',
                  style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.logout,
                  size: 30,
                ),
                title: Text(
                  'log out',
                  style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
                onTap: () {

                },
              ),
              Expanded(
                  flex: 1,
                  child: SizedBox()),
            ],
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
