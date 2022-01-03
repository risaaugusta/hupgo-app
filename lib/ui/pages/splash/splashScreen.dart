part of '../pages.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  int currentIndex = 0;
  late PageController _pageController;

  @override
  void initState(){
    _pageController=PageController(initialPage:0);
    super.initState();
  }

  @override
  void dispose(){
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Coloring.mainColor,
      pages: [
        PageViewModel(
          title: "Fast",
          body: "",
          image: Image.asset('assets/img/fast_splash.png')
        ),
        PageViewModel(
            title: "Update",
            body: "",
            image: Image.asset('assets/img/updated_splash.png')
        ),
        PageViewModel(
            title: "Mobile",
            body: "",
            image: Image.asset('assets/img/statistics_splash.png')
        )
      ],
      onDone: (){
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => Login()),
        );
      },
      done: Text("Mulai"),
      showSkipButton: true,
      skip: Text("Lewati"),
      showNextButton: true,
      next: Text('Lanjutkan'),
    );
  }
}
