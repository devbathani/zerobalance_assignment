import 'package:flutter/cupertino.dart';
import 'package:zerobalance_assignment/entity/blogs_entity.dart';
import 'package:zerobalance_assignment/entity/category_entity.dart';
import 'package:zerobalance_assignment/entity/offer_rewards_entity.dart';
import 'package:zerobalance_assignment/entity/task_entity.dart';
import 'package:zerobalance_assignment/gen/assets.gen.dart';

class HomeSceenProvider extends ChangeNotifier {
  final List<Color> gradientColors = [
    const Color(0xff001490),
    const Color(0xff303F9F),
  ];

  final List<CategoryEntity> categories = [
    CategoryEntity(icon: Assets.images.burger.path, title: "Food"),
    CategoryEntity(icon: Assets.images.pow.path, title: "Pet"),
    CategoryEntity(icon: Assets.images.shoppingBag.path, title: "Shopping"),
  ];

  final List<TaskEntity> tasks = [
    TaskEntity(
        ellipse: Assets.images.taskEllipse1.path,
        sNo: "01",
        icon: "🔑",
        subTitle: "Create category and earn ₹25",
        title: "Complete KYC"),
    TaskEntity(
        ellipse: Assets.images.taskEllipse2.path,
        sNo: "02",
        icon: "🍔",
        subTitle: "Create category and earn ₹25",
        title: "Create category"),
  ];

  final List<OfferRewardsEntity> offerRewards = [
    OfferRewardsEntity(
        subTitle: "Win rewards from Citizen,peter england, and More",
        title: "A rewarding Celecbration"),
    OfferRewardsEntity(
        subTitle: "Win rewards from Citizen,peter england, and More",
        title: "A rewarding Celecbration"),
    OfferRewardsEntity(
        subTitle: "Win rewards from Citizen,peter england, and More",
        title: "A rewarding Celecbration"),
    OfferRewardsEntity(
        subTitle: "Win rewards from Citizen,peter england, and More",
        title: "A rewarding Celecbration"),
  ];

  final List<BlogsEntity> blogs = [
    BlogsEntity(
      date: "08/09/2022",
      name: "Ann Korkowski",
      profile: Assets.images.profile.path,
      readTime: "8 mins",
      title: "4 methods of calculating Network,Which no one will tell you",
    ),
    BlogsEntity(
      date: "08/09/2022",
      name: "Ann Korkowski",
      profile: Assets.images.profile.path,
      readTime: "8 mins",
      title: "4 methods of calculating Network,Which no one will tell you",
    ),
    BlogsEntity(
      date: "08/09/2022",
      name: "Ann Korkowski",
      profile: Assets.images.profile.path,
      readTime: "8 mins",
      title: "4 methods of calculating Network,Which no one will tell you",
    ),
    BlogsEntity(
      date: "08/09/2022",
      name: "Ann Korkowski",
      profile: Assets.images.profile.path,
      readTime: "8 mins",
      title: "4 methods of calculating Network,Which no one will tell you",
    ),
  ];
}
