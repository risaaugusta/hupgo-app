part of '../pages.dart';

class Elearning extends StatefulWidget {
  const Elearning({Key? key}) : super(key: key);

  @override
  _ElearningState createState() => _ElearningState();
}

class _ElearningState extends State<Elearning> {
  ScrollController _controller = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(), // new
        controller: _controller,
        children: [
          searchBar(),
          elearningList(),
        ],
      ),
    );
  }
}


