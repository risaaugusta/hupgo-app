part of '../pages.dart';

class homeBanner extends StatefulWidget {
  const homeBanner({Key? key}) : super(key: key);


  @override
  _homeBannerState createState() => _homeBannerState();
}

class _homeBannerState extends State<homeBanner> {
  List<String> img = [
    'assets/img/news1.png',
    'assets/img/newsTesting.png',
    'assets/img/news3.png',
  ];

  int _current = 0;

  @override
  Widget build(BuildContext context) {

    final List<Widget> imgBanner =
    img
        .map((item) => Container(
        child: Center(
            child: Image.asset(item,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width
            )
        )
    )).toList();

    return Container(
        height: MediaQuery.of(context).size.height / 3.5,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CarouselSlider(
              items: imgBanner,
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                onPageChanged: (index, reason){
                  setState(() {
                    _current = index;
                  });
                }
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: img.map((url){
                int index = img.indexOf(url);
                return Container(
                  width: 8,
                  height: 8,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                      ? Coloring.mainColor : Colors.grey
                  ),
                );
              }).toList(),
            )
          ],
        ),
    );
  }
}
