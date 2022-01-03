part of '../pages.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  void initState(){
    super.initState();
    splashScreenStart();
  }

  splashScreenStart() async{
    var duration = const Duration(seconds: 3);
    return Timer(duration, (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>mainOnBoarding()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom:30),
              child: Text('Welcome To',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 36,
                      fontFamily: Fonts.REGULAR
                  ) ),
            ),
            Container(
                height: MediaQuery.of(context).size.height/4,
                width: MediaQuery.of(context).size.width/2,
                child: new Image.asset('assets/img/hupgo_logo.png')
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: Text('version 4.0',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: Fonts.LIGHT
                  ) ),
            ),
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.all(0),
              child: Text('Powered By:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: Fonts.REGULAR
                  ) ),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: Text('PT Harmoni Panca Utama',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: Fonts.REGULAR
                  ) ),
            ),
          ],
        ),
      ),
    );
  }
}

