import 'package:aplikasi_catatan_resep/models/makanan_resep.dart';
import 'package:aplikasi_catatan_resep/widgets/kategori_screen_item.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  final List<MakananResep> favoriteMakanan;
  const FavoriteScreen({super.key, required this.favoriteMakanan});

  @override
  Widget build(BuildContext context) {
    if(favoriteMakanan.isEmpty){
      return Scaffold(
      body: Center(child: Text('You have no favorites yet - start adding some!')),
    );
    } else {
      return ListView.builder(
        itemCount: favoriteMakanan.length,
        itemBuilder: (context, index) {
          return KategoriScreenItem(
            imageUrl: favoriteMakanan[index].imageUrl, 
            namaMakanan: favoriteMakanan[index].namaMakanan, 
            id: favoriteMakanan[index].id, 
            );
        }
        );
    }
    
  }
}