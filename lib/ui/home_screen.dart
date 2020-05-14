import 'dart:math';

import 'package:click/bloc/clicker/clicker_bloc.dart';
import 'package:click/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  List colors = [Colors.blue, Colors.red, Colors.green, Colors.yellow];
  Random random = new Random();
  int index = 0;
  @override
  void initState() {
    clickerBloc.add(UpdateClick(showcolor: false));
    super.initState();
  }

  void changeIndex() {
    setState(() => index = random.nextInt(4));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClickerBloc, ClickerState>(
      builder: (context, state) {
        return MaterialButton(
            child: Text(
              'Hey there',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            onPressed: () {
              clickerBloc.add(
                state.showcolor
                    ? UpdateClick(showcolor: false)
                    : UpdateClick(showcolor: true),
              );
              changeIndex();
            },
            color: state.showcolor ? colors[index] : Colors.white);
      },
    );
  }
}
