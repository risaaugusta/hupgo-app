part of '../pages.dart';

class homeDashboard extends StatefulWidget {
  const homeDashboard({Key? key}) : super(key: key);

  @override
  _homeDashboardState createState() => _homeDashboardState();
}

class _homeDashboardState extends State<homeDashboard> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  final PageStorageBucket bucket = PageStorageBucket();
  Widget _currentScreen = Login();

  List<Widget> _widgetOptions = <Widget>[
    Home(),
    Elearning(),
    Aplikasi(),
    Notifikasi(),
    Profile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  ScrollController _controller = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: _selectedIndex == 1 && _selectedIndex != 0
              ? AppBar(
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
                  title: const Text('E-Learning',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: Fonts.REGULAR,
                          fontSize: 18)),
                  backgroundColor: Colors.white,
                )
              : _selectedIndex == 2 && _selectedIndex != 0
                  ? AppBar(
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
                      title: const Text('Aplikasi',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: Fonts.REGULAR,
                              fontSize: 18)),
                      backgroundColor: Colors.white,
                    )
                  : _selectedIndex == 4 && _selectedIndex != 0
                          ? AppBar(
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
                              title: const Text('Profile',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: Fonts.REGULAR,
                                      fontSize: 18)),
                              backgroundColor: Colors.white,
                            )
                          : null,
          body: ListView(
            physics: const AlwaysScrollableScrollPhysics(), // new
            controller: _controller,
            children: [
              // _selectedIndex == 1 ? searchBar() : Text(''),
              _widgetOptions.elementAt(_selectedIndex),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.article_rounded),
                label: 'E-Learning',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.dashboard_customize),
                label: 'Aplikasi',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'Notifikasi',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: 'Profile',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Coloring.mainColor,
            onTap: _onItemTapped,
          ),
        ));
  }
}

/// Search Bar
class searchBar extends StatefulWidget {
  const searchBar({Key? key}) : super(key: key);

  @override
  _searchBarState createState() => _searchBarState();
}

class _searchBarState extends State<searchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
      child: TextFormField(
        autofocus: false,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(
              color: Color(0xffEFEFEF),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(
              color: Color(0xffEFEFEF),
            ),
          ),
          fillColor: Color(0xffEFEFEF),
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        ),
        onChanged: (value) {},
      ),
    );
  }
}
