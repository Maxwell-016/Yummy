import 'package:flutter/material.dart';
import 'package:hotel/components/color_button.dart';
import 'package:hotel/components/constants.dart';
import 'package:hotel/components/theme_button.dart';

class Home extends StatefulWidget {
  final void Function(bool useLightMode) changeTheme;
  final void Function(int changeColor) changeColor;
  final ColorSelection colorSelected;

  const Home(
      {super.key,
      required this.changeTheme,
      required this.changeColor,
      required this.colorSelected});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int tab = 0;

  List<NavigationDestination> appBarDestinations = const [
    NavigationDestination(
      icon: Icon(Icons.home_outlined),
      label: 'Home',
      selectedIcon: Icon(Icons.home),
    ),
    NavigationDestination(
      icon: Icon(Icons.shopping_cart_outlined),
      label: 'Cart',
      selectedIcon: Icon(Icons.shopping_cart),
    ),
    NavigationDestination(
      icon: Icon(Icons.person_outline),
      label: 'Account',
      selectedIcon: Icon(Icons.person),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    //TODO:  define pages

    return Scaffold(
      appBar: AppBar(
        elevation: 4.0,
        backgroundColor: Theme.of(context).colorScheme.background,
        actions: [
          ThemeButton(changeThemeMode: widget.changeTheme),
          ColorButton(
              changeColor: widget.changeColor,
              colorSelected: widget.colorSelected)
        ],
      ),
      //TODO: Switch between pages
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'You Hungry?😋',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: appBarDestinations,
        selectedIndex: tab,
        onDestinationSelected: (index) {
          setState(() {
            tab = index;
          });
        },
      ),
    );
  }
}
