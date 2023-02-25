import 'package:flutter/material.dart';
import 'package:inovest/persentation/resources/images.dart';
import 'package:inovest/persentation/resources/strings.dart';

class Post {
  final String profileImage;
  final String name;
  final String date;
  final String description;
  final String image;
  final String likes;
  final String comment;
  final String repeat;

  Post(this.profileImage, this.name, this.date, this.description, this.image,
      this.likes, this.comment, this.repeat);
}
List <Post>posts=[
  Post(
      Images.profile1,
      Strings.name1,
      Strings.date1,
      Strings.desPost1,
      Images.postImage1,
      "30",
      "5",
      "1"),
  Post(
      Images.profile2,
      Strings.name2,
      Strings.date2,
      Strings.desPost2,
      Images.postImage2,
      "90",
      "53",
      "12"),
  Post(
      Images.profile3,
      Strings.name3,
      Strings.date3,
      Strings.desPost3,
      '',
      "12",
      "7",
      ""),
  Post(
      Images.profile4,
      Strings.name4,
      Strings.date4,
      Strings.desPost4,
      Images.postImage4,
      "22",
      "43",
      "3"),
];

List drawerString=[

  "Profile",
  "notifications",
  "Message",
  "Language",
  "Help & feedback",
  "Logout",
];
List<IconData> drawerIcons = [
  Icons.person,
  Icons.notifications,
  Icons.message,
  Icons.language,
  Icons.question_mark_outlined,
  Icons.logout,
];