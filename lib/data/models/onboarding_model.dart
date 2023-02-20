
import 'package:inovest/persentation/resources/images.dart';
import 'package:inovest/persentation/resources/strings.dart';

class BoardingModel{
  String title,description,image;
  BoardingModel({required this.title,required this.description,
  required this.image});
}
List<BoardingModel> boardingList=[
  BoardingModel(
      title: Strings.title1,
      description: Strings.description1,
      image: Images.onBoard1),
  BoardingModel(
      title: Strings.title2,
      description: Strings.description2,
      image: Images.onBoard3),
  BoardingModel(
      title: Strings.title3,
      description:Strings.description3,
      image: Images.onBoard2),
  BoardingModel(
      title: Strings.title4,
      description:Strings.description4,
      image: Images.onBoard4),
];