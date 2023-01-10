import 'package:aplikasi_catatan_resep/screens/resep_masakan_screen.dart';
import 'package:flutter/material.dart';

class KategoriScreenItem extends StatefulWidget {
  final Function? isFavorite;
  final Function? toggleFavorite;
  final String imageUrl;
  final String namaMakanan;
  final String id;
  const KategoriScreenItem(
      {this.isFavorite,
      this.toggleFavorite,
      required this.imageUrl,
      required this.namaMakanan,
      required this.id,
      super.key});

  @override
  State<KategoriScreenItem> createState() => _KategoriScreenItemState();
}

class _KategoriScreenItemState extends State<KategoriScreenItem> {
  void resepMakanan(BuildContext context) {
    Navigator.of(context)
        .pushNamed(ResepMasakanScreen.routeName, arguments: widget.id)
        .then((result) {
      if (result != null) {
        // removeItem(result);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // final masakanArgsId = ModalRoute.of(context)!.settings.arguments as String;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Card(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            color: Colors.white,
            child: Column(children: [
              InkWell(
                onTap: () => resepMakanan(context),
                child: Container(
                  height: 200,
                  width: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      widget.imageUrl,
                      height: 150,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                width: 200,
                height: 80,
                child: Column(children: <Widget>[
                  Container(
                      padding: EdgeInsets.only(top: 5),
                      width: 200,
                      height: 25,
                      child: Center(
                          child: Text(
                        widget.namaMakanan,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ))),
                  const Divider(
                    thickness: 1,
                    indent: 5,
                    endIndent: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Icon(
                        Icons.schedule,
                      ),
                      Icon(
                        Icons.star,
                      ),
                      Icon(
                        Icons.attach_money,
                      ),
                    ],
                  )
                ]),
              ),
            ]),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
