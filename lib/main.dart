import 'package:flutter/material.dart';
import 'package:hupgo_app/ui/pages/pages.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hupgo_app/bloc/blocs.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => PageBloc()),
      ],
      child: MaterialApp(
          title: 'New HupGo App',
          debugShowCheckedModeBanner: false,
          home: Wrapper()),
    );
  }
}



