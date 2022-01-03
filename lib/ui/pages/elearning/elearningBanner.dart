part of '../pages.dart';

class elearningBanner extends StatefulWidget {
  const elearningBanner({Key? key}) : super(key: key);

  @override
  _elearningBannerState createState() => _elearningBannerState();
}

class _elearningBannerState extends State<elearningBanner> {
  List<String> img = [
    'assets/img/newsTesting.png',
    'assets/img/img2.png',
    'assets/img/img3.png',
    'assets/img/img4.png',
  ];

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      margin: EdgeInsets.symmetric(vertical: 15),
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: img.length,
          itemBuilder: (BuildContext context, int index) =>
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: 150,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('${img[index]}'),
                        fit: BoxFit.fill,
                      )),
                )
              )),
    );
  }
}
