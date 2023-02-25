import 'package:flutter/material.dart';
import 'package:inovest/data/models/ads_model.dart';
import 'package:inovest/persentation/resources/colors.dart';
import 'package:inovest/persentation/resources/fonts.dart';
import 'package:inovest/persentation/resources/strings.dart';
import 'package:inovest/persentation/resources/values.dart';
import 'package:inovest/persentation/widget/auth/default_textform.dart';
import 'package:inovest/persentation/widget/default_text.dart';
class AdvScreen extends StatefulWidget {
  const AdvScreen({Key? key}) : super(key: key);

  @override
  State<AdvScreen> createState() => _AdvScreenState();
}

class _AdvScreenState extends State<AdvScreen> {
  final TextEditingController controller =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              vertical: HeightSized.s1,
              horizontal: HeightSized.s2
            ),
            child:DefaultTextFormFiled(
              controller: controller,
              textInputType: TextInputType.text,
              obscureText: false,
              prefixIcon: Icons.search,

            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top:HeightSized.s2,
                left: HeightSized.s2,
                right: HeightSized.s2,
                bottom: HeightSized.s2
              ),
              child: DefaultText(
                text: Strings.categories,
                color: ColorManager.textColor2,
                fontWeight: FontWeightManager.bold,
                fontSize: FontSized.fs16,
              ),
            ),
            SizedBox(
              height: HeightSized.s13,
              child: ListView.separated(
                physics:const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(
                horizontal: HeightSized.s2,
    ),
                  itemBuilder: (context,index){
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(

                        height: HeightSized.s10,
                        width: HeightSized.s8,
                        decoration: BoxDecoration(
                          color: ColorManager.black.withOpacity(0.03)
                              ,shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage(categories[index]))
                        ),
                      ),
                      DefaultText(
                          text: catTitle[index],
                          color: ColorManager.textColor2,
                          fontSize: FontSized.fs12,
                          fontWeight: FontWeightManager.medium)
                    ],
                  );
                  },
                  separatorBuilder: (context,index)=> SizedBox(
                    width: HeightSized.s2,
                  ),
                  itemCount: categories.length),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top:HeightSized.s3,
                  left: HeightSized.s2,
                  right: HeightSized.s2,
                  bottom: HeightSized.s2
              ),
              child: DefaultText(
                text: Strings.today,
                color: ColorManager.textColor2,
                fontWeight: FontWeightManager.bold,
                fontSize: FontSized.fs14,
              ),
            ),
            Container(
              height: 393,
              margin: EdgeInsets.symmetric(
                horizontal: HeightSized.s2
              ),
              child: Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics:const BouncingScrollPhysics(),
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1/2,
                  children: List.generate(6, (index) =>
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(image: AssetImage(products[index].image),
                            fit: BoxFit.cover,
                            height:HeightSized.s30,
                            width: double.infinity,),
                          SizedBox(height: HeightSized.s1,),
                          DefaultText(text: products[index].text,
                              color: ColorManager.textColor2,
                              fontSize: FontSized.fs14,maxLines: 1
                              , fontWeight: FontWeightManager.medium,

                          ),
SizedBox(height: HeightSized.s1,),
                          DefaultText(text: products[index].text2,
                              color: ColorManager.grey,
                              fontSize: FontSized.fs12
                              , fontWeight: FontWeightManager.medium),

                           SizedBox(height:HeightSized.sh8 ,),
                          DefaultText(text: '\$${products[index].price}',
                              color: ColorManager.textColor2,
                              fontSize: FontSized.fs12
                              , fontWeight: FontWeightManager.semiBold),
                        ],
                      )

    ),

                ),
              ),
            ),
          ],
          ),
        ],
      ),
    );
  }
}
