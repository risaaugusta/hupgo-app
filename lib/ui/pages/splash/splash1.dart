part of '../pages.dart';

class Splash1 extends StatelessWidget {
  const Splash1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFE600),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Fast',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontFamily: Fonts.REGULAR)),
            Icon1()
          ],
        ),
      ),
    );
  }
}

class Icon1 extends StatefulWidget {
  const Icon1({Key? key}) : super(key: key);

  @override
  _Icon1State createState() => _Icon1State();
}

class _Icon1State extends State<Icon1> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,)..repeat(reverse: false);
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(1.5, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticIn,
  ));

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  void initState(){
    super.initState();
    splashScreenStart();
  }

  splashScreenStart() async{
    var duration = const Duration(seconds: 3);
    return Timer(duration, (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>Splash2()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child:
      Container(
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width / 2,
          child: new Image.asset('assets/img/fast_splash.png')),

    );
  }
}

