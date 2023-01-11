import 'package:aplikasi_catatan_resep/data/data_resep.dart';
import 'package:aplikasi_catatan_resep/models/makanan_resep.dart';
import 'package:aplikasi_catatan_resep/screens/coba_resep_detail_screen.dart';
import 'package:aplikasi_catatan_resep/screens/kategori_screen.dart';
import 'package:aplikasi_catatan_resep/screens/resep_masakan_screen.dart';
import 'package:aplikasi_catatan_resep/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<MakananResep> _favoriteMakanan = [];
  List<MakananResep> _toggleTambahResp = [];

  bool _isFavorite(String id) {
    return _favoriteMakanan.any((makanan) => makanan.id == id);
  }

  void _toggleFavorite(String makananId) {
    final existingIndex =
        _favoriteMakanan.indexWhere((makanan) => makanan.id == makananId);
    if (existingIndex >= 0) {
      setState(() {
        _favoriteMakanan.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favoriteMakanan.add(
            Makanan_Resep.firstWhere((makanan) => makanan.id == makananId));
      });
    }
  }

  void _tambahResp(String makananId) {
    final existRespIndex =
        _toggleTambahResp.indexWhere((makanan) => makanan.id == makananId);
    if (existRespIndex >= 0) {
    } else {
      setState(() {
        _toggleTambahResp.add(
            Makanan_Resep.firstWhere((makanan) => makanan.id == makananId));
      });
    }
  }

  // ini untuk tambah resep lebih dari 1x
//  void _tambahResp(String makananId) {
//     final existRespIndex =
//         _toggleTambahResp.indexWhere((makanan) => makanan.id == makananId);
//       setState(() {
//         _toggleTambahResp.add(
//             Makanan_Resep.firstWhere((makanan) => makanan.id == makananId));
//       });
//   }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => BottomNavigation(
              favoriteMakanan: _favoriteMakanan,
              tambahmkn: _toggleTambahResp,
            ),
        HomeScreen.routeName: (context) => HomeScreen(
          tambahMakanan: _toggleTambahResp,
        ),
        KategoriScreen.routeName: (context) => KategoriScreen(
              tambahMakanan: _toggleTambahResp,
            ),
        ResepMasakanScreen.routeName: (context) => ResepMasakanScreen(
              isFavorite: _isFavorite,
              toggleFavorite: _toggleFavorite,
              tambahResp: _tambahResp,
            ),
        CobaResepDetailScreen.routeName: (context) => CobaResepDetailScreen(
              toggleFavorite: _toggleFavorite,
              isFavorite: _isFavorite,
            )
      },
    );
  }
}
