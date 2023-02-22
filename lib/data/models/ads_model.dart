import 'package:inovest/persentation/resources/images.dart';
import 'package:inovest/persentation/resources/strings.dart';

List categories=[
  Images.cat1,
  Images.cat2,
  Images.cat3,
  Images.cat4,
  Images.cat5,
];
List catTitle=[
  Strings.devices,
  Strings.gadgets,
  Strings.gaming,
  Strings.men,
  Strings.women
];
class ProductModel{
  final String image;
  final String text;
  final String text2;
  final String  price;

  ProductModel(this.image, this.text, this.text2, this.price);
}
List <ProductModel> products=[
  ProductModel(Images.product1, Strings.pro1,Strings.proD1,"300"),
  ProductModel(Images.product2, Strings.pro2,Strings.proD2,"240"),
  ProductModel(Images.product3, Strings.pro3,Strings.proD2,"400"),
  ProductModel(Images.product4, Strings.pro4,Strings.proD2,"70"),
  ProductModel(Images.product5, Strings.pro5,Strings.proD2,"320"),
  ProductModel(Images.product6, Strings.pro6,Strings.proD2,"160"),
];