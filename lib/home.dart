import 'package:flutter/material.dart';
import 'package:pokemon/screens/random_pokemon_screen.dart';
import 'package:pokemon/screens/search_pokemon_screen.dart';

class HomeNavigator extends StatefulWidget {
  const HomeNavigator({Key? key}) : super(key: key);

  @override
  _HomeNavigatorState createState() => _HomeNavigatorState();
}

class _HomeNavigatorState extends State<HomeNavigator> {

  final List<Widget> pages = [
    const SearchPokemonScreen(
      key: PageStorageKey('Search'),
    ),
    const RandomPokemonScreen(
      key: PageStorageKey('Random'),
    )
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  int _currentIndex = 0;

  Widget _bottomNavigationBar(int currentIndex) => BottomNavigationBar(
      selectedItemColor: Colors.blue[600],
      unselectedItemColor: Colors.black,
      onTap: (int index) => setState(() => _currentIndex = index),
      currentIndex: currentIndex,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.settings_backup_restore_sharp,), label: 'Random'),
      ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(_currentIndex),
      body: PageStorage(
        child: pages[_currentIndex],
        bucket: bucket,
      ),
    );
  }
}
