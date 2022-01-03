part of '../../ui/pages/pages.dart';

class onBoardingModel {
  String img;
  String title;
  Color bg;
  Color button;

  onBoardingModel({
    required this.img,
    required this.title,
    required this.bg,
    required this.button,
  });
}

List<onBoardingModel> screens = <onBoardingModel>[
  onBoardingModel(
      img: 'assets/img/fast_splash.png',
      title: 'Fast',
      bg: Color(0xffFFE600),
      button: Colors.white),
  onBoardingModel(
      img: 'assets/img/updated_splash.png',
      title: 'Update',
      bg: Color(0xff00964C),
      button: Colors.white),
  onBoardingModel(
      img: 'assets/img/statistics_splash.png',
      title: 'Mobile',
      bg: Color(0xffE22625),
      button: Colors.white),
];
