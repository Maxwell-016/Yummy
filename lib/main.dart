import 'package:flutter/material.dart';
import 'package:hotel/components/constants.dart';

void main() {
  runApp(Yummy());
}

class Yummy extends StatefulWidget {

  Yummy({super.key});

  @override
  State<Yummy> createState() => _YummyState();
}

class _YummyState extends State<Yummy> {
  // TODO: Setup default theme
  ThemeMode themeMode=ThemeMode.dark;

  ColorSelection colorSelected = ColorSelection.pink;

  //TODO: Add changeTheme above here
  void changeThemeMode(bool useLightMode){
    setState(() {
      themeMode=useLightMode? ThemeMode.light : ThemeMode.dark;
    });
  }
  void changeColor(int value){
    setState(() {
      colorSelected = ColorSelection.values[value];
    });
  }
  @override
  Widget build(BuildContext context) {
    const appTitle="Yummy";

    // TODO: Setup default theme

    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,

      //TODO: Add theme
      themeMode: themeMode,
      theme: ThemeData(
        colorSchemeSeed: colorSelected.color,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: colorSelected.color,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),

      //TODO: Replace scaffold with home widget
      home: Scaffold(
        appBar: AppBar(
          //TODo: Add action buttons
          elevation: 4.0,
          title: const Text(appTitle,style: TextStyle(fontSize:24.0),),
        ),
        body: const Center(
          child: Text("You hungry?",style: TextStyle(fontSize: 30.0),),
        ),
      ),
    );
  }
}

