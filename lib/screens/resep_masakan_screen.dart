import 'package:aplikasi_catatan_resep/models/makanan_resep.dart';
import 'package:aplikasi_catatan_resep/screens/kategori_screen.dart';
import 'package:flutter/material.dart';

import '../data/data_resep.dart';

class ResepMasakanScreen extends StatefulWidget {
  static const routeName = '/resepMakanan-screen';

  final Function toggleFavorite;
  final Function isFavorite;

  // final Affordability? affordability;
  const ResepMasakanScreen(
      {required this.toggleFavorite,
      required this.isFavorite,
      super.key,
      // this.affordability
      
      });

  @override
  State<ResepMasakanScreen> createState() =>
      _ResepMasakanScreenState(
        //affordability: affordability!
        );
}

class _ResepMasakanScreenState extends State<ResepMasakanScreen>
    with TickerProviderStateMixin {
  // final Affordability affordability;
  // _ResepMasakanScreenState({
  //   required this.affordability,
  // });

  // String get affordabilityText {
  //   switch (affordability) {
  //     case Affordability.Affordable:
  //       return 'Affordable';
  //       break;
  //     case Affordability.Pricey:
  //       return 'Pricey';
  //       break;
  //     case Affordability.Luxurious:
  //       return 'Luxurious';
  //       break;
  //     default:
  //       return 'Unknown';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final masakanArgsId = ModalRoute.of(context)!.settings.arguments as String;
    final selectMakanan =
        Makanan_Resep.firstWhere((makanan) => makanan.id == masakanArgsId);
    TabController _tabController = TabController(length: 3, vsync: this);
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Container(
                height: 220,
                width: double.maxFinite,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  child: Image.network(
                    selectMakanan.imageUrl,
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                  Container(
                    margin: const EdgeInsets.only(right: 10, top: 15),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.deepPurple),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          selectMakanan.namaMakanan,
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: <Widget>[
                            IconButton(
                                onPressed: () =>
                                    widget.toggleFavorite(masakanArgsId),
                                icon: Icon(widget.isFavorite(masakanArgsId)
                                    ? Icons.favorite
                                    : Icons.favorite_border)),
                            IconButton(
                                onPressed: () {}, icon: const Icon(Icons.share))
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Recipe',
                            style: TextStyle(
                              fontSize: 16,
                            )),
                        const SizedBox(
                          width: 15,
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.star,
                              size: 20,
                              color: Colors.amber,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('4.2',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ]),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: <Widget>[
                Container(
                    child: TabBar(
                  isScrollable: true,
                  labelPadding: EdgeInsets.symmetric(horizontal: 30),
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  splashBorderRadius: BorderRadius.circular(40),
                  labelColor: Colors.deepPurple,
                  unselectedLabelColor: Colors.grey,
                  controller: _tabController,
                  tabs: const [
                    Tab(
                      child: Text(
                        'Ingredients',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Preparation',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Nutrition',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                  ],
                )),
                const Divider(
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                ),
                Container(
                  width: double.maxFinite,
                  height: 170,
                  child: TabBarView(controller: _tabController, children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ListView.builder(
                        itemCount: selectMakanan.ingredients.length,
                        itemBuilder: (ctx, index) {
                          return Column(
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  child: Text('# ${index + 1}'),
                                ),
                                title: Text(
                                  selectMakanan.ingredients[index],
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              const Divider(
                                thickness: 1,
                                indent: 20,
                                endIndent: 20,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ListView.builder(
                          itemCount: selectMakanan.preparation.length,
                          itemBuilder: (ctx, index) {
                            return Padding(
                              padding: const EdgeInsets.all(5),
                              child: Text(
                                selectMakanan.preparation[index],
                                style: TextStyle(fontSize: 14),
                                textAlign: TextAlign.center,
                              ),
                            );
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 80, vertical: 10),
                      child: ListView.builder(
                        itemCount: selectMakanan.nutrition.length,
                        itemBuilder: (ctx, index) => Card(
                          elevation: 0,
                          color: Colors.deepPurple,
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              selectMakanan.nutrition[index],
                              textAlign: TextAlign.center,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
            const Divider(
              thickness: 2,
              indent: 20,
              endIndent: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: [
                      Icon(
                        Icons.attach_money,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'affordabilityText',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.schedule,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '30 menit',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.deepPurple,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
