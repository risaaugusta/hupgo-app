part of '../pages.dart';

class Aplikasi extends StatefulWidget {
  const Aplikasi({Key? key}) : super(key: key);

  @override
  _AplikasiState createState() => _AplikasiState();
}

class _AplikasiState extends State<Aplikasi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          searchBar(),
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
                  Text('PTY Calculator',
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
                  Text('IUT',
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
                  Text('Yellow Card',
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
                  Text('KTA/TTA',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: Fonts.REGULAR,
                          fontSize: 12)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
