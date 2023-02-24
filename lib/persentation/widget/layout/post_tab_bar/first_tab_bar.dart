import 'package:flutter/material.dart';
import 'package:inovest/persentation/resources/colors.dart';
import 'package:inovest/persentation/resources/fonts.dart';
import 'package:inovest/persentation/resources/strings.dart';
import 'package:inovest/persentation/resources/values.dart';
import 'package:inovest/persentation/widget/auth/default_textform.dart';
import 'package:inovest/persentation/widget/default_button.dart';
import 'package:inovest/persentation/widget/default_text.dart';
import 'package:inovest/persentation/widget/layout/type_adds.dart';
class FirstTabBar extends StatelessWidget {
   FirstTabBar({Key? key}) : super(key: key);
  final TextEditingController titleController=TextEditingController();
  final TextEditingController descriptionController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics:const BouncingScrollPhysics(),
      padding: EdgeInsets.only(
          right: HeightSized.s2,
          left: HeightSized.s2,
          bottom: HeightSized.s12
      ),
      children: [
        const  TypeAdds(text: Strings.addPost),
        InkWell(
          onTap: (){
            //image picker
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(Icons.add_a_photo,color: ColorManager.primary,),
              SizedBox(width: HeightSized.s2,),
              DefaultText(text:Strings.addPhoto,
                  color: ColorManager.primary,
                  fontSize: FontSized.fs14,
                  fontWeight: FontWeightManager.semiBold)
            ],
          ),
        ),
        SizedBox(height: HeightSized.s4,),
        DefaultText(
            text: Strings.title,
            color: ColorManager.textColor,
            fontSize: FontSized.fs14,
            fontWeight: FontWeightManager.semiBold),
        DefaultTextFormFiled(
          controller: titleController,
          textInputType: TextInputType.text,
          obscureText: false,
        ),
        SizedBox(height: HeightSized.s2,),
        DefaultText(
            text: Strings.description,
            color: ColorManager.textColor,
            fontSize: FontSized.fs14,
            fontWeight: FontWeightManager.semiBold),
        DefaultTextFormFiled(
          controller: descriptionController,
          textInputType: TextInputType.text,
          obscureText: false,
          maxLines: 9,
        ),
        SizedBox(height: HeightSized.s2,),
        DefaultButton(
          onPressed: () {
            //add post
          }, text:Strings.post,
          color: ColorManager.primary,
        ),
      ],
    );
  }
}
