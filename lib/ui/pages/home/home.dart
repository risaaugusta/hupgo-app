part of '../pages.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int points = 30;
  int elearning = 98;

  final List<String> img = <String>[
    'assets/img/news1.png',
    'assets/img/newsTesting.png',
    'assets/img/news3.png',
  ];

  List<String> newsTitle = <String>[
    'Anual Meeting HPU 2021',
    'Penghargaan ZAA/HIV, Aids Project Site KUP, SBA, DMI',
    'President Message 2021'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: new EdgeInsets.only(left: 15, right: 15),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            homeBanner(),
            GridView.count(
              shrinkWrap: true,
              childAspectRatio: (2.5 / 2.5),
              // padding: const EdgeInsets.only(top: 10),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 4,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: InkWell(
                        onTap: () => {},
                        child: new Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              color: Coloring.secondColor,
                            ),
                            child: Image.asset(
                                'assets/img/icon_sms.png')), //............
                      ),
                    ),
                    Text('SMS',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: Fonts.REGULAR,
                            fontSize: 12)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: InkWell(
                        onTap: () => {},
                        child: new Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              color: Coloring.secondColor,
                            ),
                            child: Image.asset(
                                'assets/img/icon_safety.png')), //............
                      ),
                    ),
                    Text('Safety',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: Fonts.REGULAR,
                            fontSize: 12)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: InkWell(
                        onTap: () => {},
                        child: new Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              color: Coloring.secondColor,
                            ),
                            child: Image.asset(
                                'assets/img/icon_audit.png')), //............
                      ),
                    ),
                    Text('Audit',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: Fonts.REGULAR,
                            fontSize: 12)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: InkWell(
                        onTap: () => {},
                        child: new Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              color: Coloring.secondColor,
                            ),
                            child: Image.asset(
                                'assets/img/icon_logistic.png')), //............
                      ),
                    ),
                    Text('Logistic',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: Fonts.REGULAR,
                            fontSize: 12)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: InkWell(
                        onTap: () => {},
                        child: new Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              color: Coloring.secondColor,
                            ),
                            child: Image.asset('assets/img/truck.png')),
                      ),
                    ),
                    Text('Plantation',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: Fonts.REGULAR,
                            fontSize: 12)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: InkWell(
                        onTap: () => {},
                        child: new Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            color: Coloring.secondColor,
                          ),
                          // child:  Image.asset('assets/img/truck.png')
                        ), //............
                      ),
                    ),
                    Text('Testing',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: Fonts.REGULAR,
                            fontSize: 12)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: InkWell(
                        onTap: () => {},
                        child: new Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            color: Coloring.secondColor,
                          ),
                          // child:  Image.asset('assets/img/truck.png')
                        ), //............
                      ),
                    ),
                    Text('Testing',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: Fonts.REGULAR,
                            fontSize: 12)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: InkWell(
                        onTap: () => {},
                        child: new Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            color: Coloring.secondColor,
                          ),
                          // child:  Image.asset('assets/img/truck.png')
                        ), //............
                      ),
                    ),
                    Text('Testing',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: Fonts.REGULAR,
                            fontSize: 12)),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 30, bottom: 15),
              child: Text('Productions',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: Fonts.REGULAR,
                      fontSize: 12)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2.7,
                  height: MediaQuery.of(context).size.height / 14,
                  margin: EdgeInsets.only(left: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Color(0xffF4F4F4)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Text('Points',
                            style: TextStyle(
                                color: Color(0xff999696),
                                fontFamily: Fonts.REGULAR,
                                fontSize: 12)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(width: 15),
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: Text('$points',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: Fonts.REGULAR,
                                    fontSize: 18)),
                          ),
                          Image.asset('assets/img/icon_points.png',
                              width: 20, height: 20)
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2.7,
                  height: MediaQuery.of(context).size.height / 14,
                  margin: EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Color(0xffF4F4F4)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Text('E-Learning',
                            style: TextStyle(
                                color: Color(0xff999696),
                                fontFamily: Fonts.REGULAR,
                                fontSize: 12)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(width: 15),
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: Text('$elearning ' + '%',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: Fonts.REGULAR,
                                    fontSize: 18)),
                          ),
                          Image.asset('assets/img/icon_learning.png',
                              width: 20, height: 20)
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: Text('Update Terbaru',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: Fonts.REGULAR,
                      fontSize: 12)),
            ),
            Container(
              margin: EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/3,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: img.length,
                itemBuilder: (BuildContext context, int index) =>
                    Container(
                      margin: EdgeInsets.only(right: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child:Image.asset('${img[index]}',
                                width: MediaQuery.of(context).size.width/1.5)
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width/1.5,
                            padding: const EdgeInsets.only(top:10),
                            child: Text('${newsTitle[index]}',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: Fonts.REGULAR,
                                    fontSize: 10)),
                          ),
                        ],
                      ),
                    ),
              ),
            ),
          ],
        ));
  }
}
