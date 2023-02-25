import 'package:inovest/persentation/resources/images.dart';
import 'package:inovest/persentation/resources/strings.dart';

class DealsModel {
  final String logo;
  final String companyName;
  final String industry;
  final double val;
  final double percent;

  DealsModel(this.logo, this.companyName, this.industry, this.val, this.percent);
}

List<DealsModel> deals = [
  DealsModel(Images.profile1, Strings.name1
      ,Strings.indus1,40.0,12.0 ),
  DealsModel(Images.profile3, Strings.name3
      ,Strings.indus2,120.0,23.0 ),
  DealsModel(Images.profile5, Strings.name4
      ,Strings.indus3,540.0,32.0 ),

];
