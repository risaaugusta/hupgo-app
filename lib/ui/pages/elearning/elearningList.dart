part of '../pages.dart';

class elearningList extends StatefulWidget {
  const elearningList({Key? key}) : super(key: key);

  @override
  _elearningListState createState() => _elearningListState();
}

class _elearningListState extends State<elearningList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: new EdgeInsets.symmetric(horizontal:5),
      width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height/2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          elearningBanner(),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.only(bottom:10),
                itemCount: 15,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    height: 100,
                    margin: EdgeInsets.only(bottom: 10),
                    child: Card(
                      elevation: 0.8,
                      shadowColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: InkWell(
                          onTap: () {
                            print('Card tapped.');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  height: 70,
                                  width: 70,
                                  child: new Image.asset('assets/img/newsTesting.png')
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      'Asertif Communication',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(color: Colors.black,
                                          fontFamily: Fonts.REGULAR,fontSize: 14)
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text(
                                        'HCMGA',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.grey,
                                            fontFamily: Fonts.REGULAR,fontSize: 14)
                                    ),
                                  ),
                                  SizedBox(height: 30)
                                ],
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: ButtonTheme(
                                  minWidth: 90,
                                  height: 30,
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        side: BorderSide(color: Coloring.mainColor)),
                                    onPressed: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(builder: (context) => homeDetailTransaksi(index)),
                                      // );
                                    },
                                    color: Colors.white,
                                    textColor: Colors.white,
                                    child: Text("Enroll",
                                        style: TextStyle(color: Coloring.mainColor, fontFamily: Fonts.REGULAR,fontSize: 14)),
                                  ),
                                ),
                              ),
                            ],
                          )
                      ),
                    ),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}
