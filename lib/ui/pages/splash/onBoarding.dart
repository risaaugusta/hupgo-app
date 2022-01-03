part of '../pages.dart';

class onBoarding extends StatefulWidget {
  const onBoarding({Key? key}) : super(key: key);

  @override
  _onBoardingState createState() => _onBoardingState();
}

class _onBoardingState extends State<onBoarding> {
  int currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  void disposed() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: currentIndex == 0 ? Color(0xffFFE600) : currentIndex == 1 ? Color(0xff00964C) : Color(0xffE22625),
        body: Padding(
            padding: EdgeInsets.only(left: 30, right: 30, top: 70),
            child: PageView.builder(
              itemCount: screens.length,
              controller: _pageController,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      screens[index].title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontFamily: Fonts.REGULAR),
                    ),
                    Image.asset(screens[index].img),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          height: MediaQuery
                              .of(context)
                              .size
                              .height / 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                // margin: EdgeInsets.only(left:100),
                                child: InkWell(
                                    onTap: () {
                                        Navigator.pushReplacement(
                                            context, MaterialPageRoute(
                                            builder: (context) => Login()));

                                    },
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 7),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15)
                                      ),
                                      child: Text("Lewati",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: Fonts.REGULAR),
                                      ),
                                    )
                                ),
                              ),
                              ListView.builder(
                                  itemCount: 1,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (_, index) {
                                    return Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: screens.map((url){
                                        int index = screens.indexOf(url);
                                        return Container(
                                          width: 8,
                                          height: 8,
                                          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: currentIndex == index
                                                  ? Coloring.mainColor : Colors.grey
                                          ),
                                        );
                                      }).toList(),
                                    );
                                  }),
                              Container(
                                // margin: EdgeInsets.only(left:100),
                                child: InkWell(
                                      onTap: () {
                                        if (index == screens.length - 1) {
                                          Navigator.push(
                                              context, CupertinoPageRoute(
                                              builder: (context) => Login()));
                                        }

                                        _pageController.nextPage(
                                          duration: Duration(microseconds: 300), curve: Curves.easeInSine,);
                                      },
                                      child: Container(

                                        child: Text("Lanjutkan",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontFamily: Fonts.REGULAR),
                                            ),
                                      )
                                      ),
                              ),
                            ],
                          )),
                    ),
                  ],
                );
              },
            )));
  }
}
