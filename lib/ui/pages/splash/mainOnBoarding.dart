part of '../pages.dart';

class mainOnBoarding extends StatefulWidget {
  const mainOnBoarding({Key? key}) : super(key: key);

  @override
  _mainOnBoardingState createState() => _mainOnBoardingState();
}

class _mainOnBoardingState extends State<mainOnBoarding> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: onBoarding()
    );
  }
}
