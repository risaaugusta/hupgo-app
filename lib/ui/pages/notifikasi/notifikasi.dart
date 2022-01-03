part of '../pages.dart';

class Notifikasi extends StatefulWidget {
  const Notifikasi({Key? key}) : super(key: key);

  @override
  _NotifikasiState createState() => _NotifikasiState();
}

class _NotifikasiState extends State<Notifikasi> {
  var time = formatDate(DateTime.now(), [dd, ' ', mm, ' ', yyyy]).toString();
  int index = 0;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: new IconButton(
              icon: new Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => homeDashboard()),
                );
              },
            ),
            title: const Text('Notifikasi',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: Fonts.REGULAR,
                    fontSize: 18)),
            backgroundColor: Colors.white,
            bottom: const TabBar(
              physics: NeverScrollableScrollPhysics(),
              indicatorColor: Coloring.mainColor,
              labelColor: Coloring.mainColor,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                  child: Text('Aktif',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          // color: Coloring.mainColor,
                          fontFamily: Fonts.REGULAR,
                          fontSize: 14)),
                ),
                Tab(child: Text('HCMGA',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        // color: Coloring.mainColor,
                        fontFamily: Fonts.REGULAR,
                        fontSize: 14)),),
                Tab(child: Text('Aktif',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        // color: Coloring.mainColor,
                        fontFamily: Fonts.REGULAR,
                        fontSize: 14)),)
              ],
            ),
          ),
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(8),
                  itemCount: 20,
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
                                    child: new Image.asset(
                                        'assets/img/newsTesting.png')),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Asertif Communication',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: Fonts.REGULAR,
                                            fontSize: 14)),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text('HCMGA',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: Fonts.REGULAR,
                                              fontSize: 14)),
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
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          side: BorderSide(
                                              color: Coloring.mainColor)),
                                      onPressed: () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(builder: (context) => homeDetailTransaksi(index)),
                                        // );
                                      },
                                      color: Colors.white,
                                      textColor: Colors.white,
                                      child: Text("Enroll",
                                          style: TextStyle(
                                              color: Coloring.mainColor,
                                              fontFamily: Fonts.REGULAR,
                                              fontSize: 14)),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    );
                  }),
              Icon(null),
              Icon(null),
            ],
          ),
        ),
      ),
    );
  }
}
