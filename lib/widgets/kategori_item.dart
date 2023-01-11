import 'package:flutter/material.dart';

import '../screens/kategori_screen.dart';

class KategoriItem extends StatelessWidget {
  final String id;
  final String titleKategori;
  final String subtitleKategori;
  final String imgUrl;
  final color;
  const KategoriItem({
    required this.id,
    required this.subtitleKategori,
    required this.titleKategori,
    required this.imgUrl,
    required this.color,
    Key? key,
  }) : super(key: key);

  void selectCategory(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(KategoriScreen.routeName,
        arguments: {'id': id, 'title': titleKategori});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: InkWell(
        onTap: () => selectCategory(context),
        child: Card(
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          color: color[300],
          child: ListTile(
            leading: Container(
              height: 70,
              width: 60,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(imgUrl, fit: BoxFit.cover,)),
            ),
            title: Text(
              titleKategori,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            subtitle: Text(subtitleKategori,
                style: TextStyle(color: Colors.black54, fontSize: 14)),
          ),
        ),
      ),
    );
  }
}
