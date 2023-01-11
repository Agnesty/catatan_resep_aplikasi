import 'package:aplikasi_catatan_resep/data/data_resep.dart';
import 'package:flutter/material.dart';

import '../models/makanan_resep.dart';
import '../widgets/cobaResep_item.dart';
import '../widgets/kategori_item.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home-screen';
  List<MakananResep> tambahMakanan;
   HomeScreen({required this.tambahMakanan, super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  
  void _removeMeal(String mknId) {
    setState(() {
      widget.tambahMakanan.removeWhere((mkn) => mkn.id == mknId);
    });
  }

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    final appbar = AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
                size: 40,
              )),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20, top: 15),
            height: 30,
            width: 45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.deepPurple),
            child: const Icon(Icons.search),
          ),
        ]);
    final mediaQuery = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: appbar,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: <Widget>[
                Container(
                    child: TabBar(
                  isScrollable: true,
                  labelPadding: EdgeInsets.symmetric(horizontal: 20),
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  splashBorderRadius: BorderRadius.circular(40),
                  labelColor: Colors.deepPurple,
                  unselectedLabelColor: Colors.grey,
                  controller: _tabController,
                  tabs: const [
                    Tab(
                      child: Text(
                        'Ide Resep',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Coba Resep',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    
                  ],
                )),
                Divider(
                  thickness: 3,
                  indent: 60,
                  endIndent: 60,
                ),
                Container(
                  width: double.maxFinite,
                  height: (mediaQuery.size.height -
                          appbar.preferredSize.height -
                          mediaQuery.padding.top) *
                      0.8,
                  child: TabBarView(controller: _tabController, children: [
                    SingleChildScrollView(
                      child: Container(
                        width: double.maxFinite,
                        height: (mediaQuery.size.height -
                                appbar.preferredSize.height -
                                mediaQuery.padding.top) *
                            0.79,
                        child: ListView(
                          children: Kategori_Resep.map(
                            (item) => KategoriItem(
                              subtitleKategori: item.subtitleKategori,
                              titleKategori: item.titleKategori,
                              color: item.color,
                              id: item.id,
                              imgUrl: item.imgUrl,
                            ),
                          ).toList(),
                        ),
                      ),
                    ),
                    if (widget.tambahMakanan.isEmpty)
                    Center(child: Text('Belum ditambahkan')),
                  if (widget.tambahMakanan.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: ListView.builder(
                          itemCount: widget.tambahMakanan.length,
                          itemBuilder: (context, index) {
                            return CobaResepItem(
                              imageUrl: widget.tambahMakanan[index].imageUrl,
                              namaMakanan:
                                  widget.tambahMakanan[index].namaMakanan,
                              id: widget.tambahMakanan[index].id,
                              removeItem: _removeMeal,
                            );
                          }),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
