import 'package:aplikasi_catatan_resep/data/data_resep.dart';
import 'package:flutter/material.dart';

import '../widgets/kategori_item.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home-screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
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
                    Tab(
                      child: Text(
                        'Resep Populer',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                  ],
                )),
                Divider(
                  thickness: 3,
                  indent: 20,
                  endIndent: 20,
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
                            ),
                          ).toList(),
                        ),
                      ),
                    ),
                    Text('data'),
                    Text('1'),
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
