import 'package:aplikasi_catatan_resep/models/makanan_resep.dart';
import 'package:flutter/material.dart';

import '../screens/favorite_screen.dart';
import '../screens/home_screen.dart';
import '../screens/profile_screen.dart';

class BottomNavigation extends StatefulWidget {
  final List<MakananResep> favoriteMakanan;
  final List<MakananResep> tambahmkn;
  static const routeName = '/';
  const BottomNavigation({super.key, required this.favoriteMakanan, required this.tambahmkn});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  late List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState(){
    _pages = [
      {'page': HomeScreen(tambahMakanan: widget.tambahmkn,)},
      {'page': FavoriteScreen(favoriteMakanan: widget.favoriteMakanan,)},
      {'page': ProfileScreen()},
    ];
    super.initState();
  }

  @override
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPageIndex,
          onTap: _selectPage,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.deepPurple,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home)),
            BottomNavigationBarItem(
              label: 'Favorite',
              icon: Icon(Icons.favorite)),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person)),
          ],
        ),
    );
  }
}