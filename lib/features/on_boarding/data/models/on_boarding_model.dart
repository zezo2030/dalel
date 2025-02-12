import 'package:dalel/core/utils/app_assets.dart';

class OnBoardingModel {
  final String title;
  final String subtitle;
  final String image;

  OnBoardingModel(
      {required this.title, required this.subtitle, required this.image});
}

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
    title: "Explore The history with Dalel in a smart way",
    subtitle:
        "Using our app’s history libraries you can find many historical periods ",
    image: Assets.imagesOnBoarding,
  ),
  OnBoardingModel(
    title: "From every place on earth",
    subtitle: "A big variety of ancient places from all over the world ",
    image: Assets.imagesOnBoarding1,
  ),
  OnBoardingModel(
    title: "Using modern AI technology for better user experience",
    subtitle:
        "AI provide recommendations and helps you to continue the search journey",
    image: Assets.imagesOnBoarding2,
  ),
];
