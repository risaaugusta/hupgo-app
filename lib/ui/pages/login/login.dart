part of '../pages.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscureText = true;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  String password = "";

  @override
  Widget build(BuildContext context) {
    // Future.delayed(Duration.zero, () => showAlert(context));

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(0),
              child: Text('Sign in',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: Fonts.BOLD
                  ) ),
            ),
            Container(
              width: MediaQuery.of(context).size.width/1.3,
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.only(top: 70),
              child: Material(
                elevation: 20.0,
                shadowColor: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    hintText: 'NIK',
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  ),
                  onChanged: (value) {},
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width/1.3,
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.only(top: 20),
              child: Material(
                elevation: 20.0,
                shadowColor: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
                child: TextFormField(
                  autofocus: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    hintText: 'Password',
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  ),
                  onChanged: (text)=> password = text , //dummy value
                ),
              ),
            ),
            Container(
              margin:  EdgeInsets.only(top: 70,bottom: 60),
              height: 60,
              child: ButtonTheme(
                minWidth: 300,
                child: Container(
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(color: Coloring.mainColor)),
                    onPressed: () {
                      if(password == "testing"){ // dummy value
                        _dialogSuccessAlert();
                      }else{
                        _dialogFailedAlert();
                      }
                    },
                    color: Coloring.mainColor,
                    textColor: Colors.white,
                    child: Text("Get Started",
                        style: TextStyle(color: Colors.white, fontFamily: Fonts.BOLD,fontSize: 18)),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Text('Belum mempunyai akun?  ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff9F9F9F),
                        fontSize: 18,
                        fontFamily: Fonts.REGULAR,
                      ) ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Text(' SignUp',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Coloring.iconicColor,
                        fontSize: 18,
                        fontFamily: Fonts.BOLD,
                      ) ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Future<void> _dialogFailedAlert() async {
    return showModalBottomSheet<void>(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height / 2  ,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: const Text('User tidak ditemukan!',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontFamily: Fonts.BOLD,fontSize: 18)),
                ),
                Container(
                    height: 150,
                    width: 150,
                    child: new Image.asset('assets/img/man1.png')
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: const Text('Pastikan NIK Anda terdaftar di sistem, hubungi atasan Anda'
                      ' untuk mendapatkan Akses!',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontFamily: Fonts.REGULAR,fontSize: 14)),
                ),
                Container(
                  // margin:  EdgeInsets.only(top: 20),
                  height: 60,
                  child: ButtonTheme(
                    minWidth: 300,
                    child: Container(
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(color: Coloring.mainColor)),
                        onPressed: () => Navigator.pop(context),
                        color: Coloring.mainColor,
                        textColor: Colors.white,
                        child: Text("Coba Lagi",
                            style: TextStyle(color: Colors.white, fontFamily: Fonts.BOLD,fontSize: 18)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _dialogSuccessAlert() async {
    return showModalBottomSheet<void>(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height / 2  ,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: const Text('Berhasil login!',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontFamily: Fonts.BOLD,fontSize: 18)),
                ),
                Icon(
                  Icons.check_circle_outline,
                  color: Coloring.mainColor,
                  size: 100.0,
                ),
                Container(
                  margin:  EdgeInsets.only(top: 20),
                  height: 60,
                  child: ButtonTheme(
                    minWidth: 300,
                    child: Container(
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(color: Coloring.mainColor)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Auth()),);
                        },
                        color: Coloring.mainColor,
                        textColor: Colors.white,
                        child: Text("Oke",
                            style: TextStyle(color: Colors.white, fontFamily: Fonts.BOLD,fontSize: 18)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }


}
