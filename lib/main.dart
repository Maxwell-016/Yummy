import 'package:flutter/material.dart';
import 'package:hotel/components/constants.dart';
import 'package:hotel/home.dart';

void main() {
  runApp(const Yummy());
}

class Yummy extends StatefulWidget {
  const Yummy({super.key});

  @override
  State<Yummy> createState() => _YummyState();
}

class _YummyState extends State<Yummy> {
  // TODO: Setup default theme
  ThemeMode themeMode = ThemeMode.light;

  ColorSelection colorSelected = ColorSelection.pink;

  //TODO: Add changeTheme above here
  void changeThemeMode(bool useLightMode) {
    setState(() {
      themeMode = useLightMode ? ThemeMode.light : ThemeMode.dark;
    });
  }

  void changeColor(int value) {
    setState(() {
      colorSelected = ColorSelection.values[value];
    });
  }

  @override
  Widget build(BuildContext context) {
    const appTitle = "Yummy";

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
        home: Home(
            changeTheme: changeThemeMode,
            changeColor: changeColor,
            colorSelected: colorSelected));
  }
}
