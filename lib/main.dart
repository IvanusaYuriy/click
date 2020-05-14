import 'package:click/bloc/clicker/clicker_bloc.dart';
import 'package:click/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final ClickerBloc clickerBloc = new ClickerBloc();
void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<ClickerBloc>(
          create: (_) => clickerBloc,
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solid Software',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
