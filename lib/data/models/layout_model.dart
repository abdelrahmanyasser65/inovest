import 'package:flutter/material.dart';
import 'package:inovest/persentation/resources/strings.dart';
import 'package:inovest/persentation/screens/layout/added_screen.dart';
import 'package:inovest/persentation/screens/layout/adv_screen.dart';
import 'package:inovest/persentation/screens/layout/deals_screen.dart';
import 'package:inovest/persentation/screens/layout/feed_screen.dart';
import 'package:inovest/persentation/screens/layout/home/home_screen.dart';

final List screens=[
 const FeedScreen(),
const AddedScreen(),
const HomeScreen(),
const DealsScreen(),
const AdvScreen(),
];
final List titles=[
  Strings.feed,
  Strings.post,
  Strings.inovest,
  Strings.deals,
  Strings.market
];
final List icons=[
  Icons.home_outlined,
  Icons.add_to_photos_rounded,
  Icons.wb_twighlight,
  Icons.library_add_check,
  Icons.shopping_cart
];

