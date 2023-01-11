import 'package:aplikasi_catatan_resep/models/makanan_resep.dart';
import 'package:aplikasi_catatan_resep/widgets/cobaResep_item.dart';
import 'package:aplikasi_catatan_resep/widgets/kategori_screen_item.dart';
import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

import '../data/data_resep.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/kategori_item.dart';

class KategoriScreen extends StatefulWidget {
  static const routeName = '/kategori-screen';
    List<MakananResep> tambahMakanan;

   KategoriScreen({
    super.key,
     required this.tambahMakanan,
  });

  @override
  State<KategoriScreen> createState() => _KategoriScreenState();
}

class _KategoriScreenState extends State<KategoriScreen>
    with TickerProviderStateMixin {
  late String kategoriTitle;
  late List<MakananResep> displayedResep;
  
  var _loadedIniData = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!_loadedIniData) {
      final routeArgs =
          ModalRoute.of(context)!.settings.arguments as Map<String, String>;
      kategoriTitle = routeArgs['title']!;
      final kategoriId = routeArgs['id'];
      displayedResep = Makanan_Resep.where((makanan) {
        return makanan.categories.contains(kategoriId);
      }).toList();
      widget.tambahMakanan = Makanan_Resep.where((makanan) {
        return makanan.categories.contains(kategoriId);
      }).toList();
      _loadedIniData = true;
    }
    super.didChangeDependencies();
  }

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
          padding: const EdgeInsets.only(left: 10, top: 5),
          child: IconButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed(BottomNavigation.routeName);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 35,
              )),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20, top: 15),
            height: 30,
            width: 45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.deepPurple),
            child: const Icon(Icons.search),
          ),
        ]);
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Coba Resep',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
                    0.89,
                child: TabBarView(controller: _tabController, children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        kategoriTitle,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Recipe',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Expanded(
                        child: ScrollSnapList(
                          itemSize: 220,
                          scrollDirection: Axis.horizontal,
                          dynamicItemSize: true,
                          onItemFocus: ((index) {}),
                          itemCount: displayedResep.length,
                          itemBuilder: (BuildContext context, int index) {
                            return KategoriScreenItem(
                              id: displayedResep[index].id,
                              namaMakanan: displayedResep[index].namaMakanan,
                              imageUrl: displayedResep[index].imageUrl,
                            );
                          },
                        ),
                      ),
                    ],
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
    );
  }
}
