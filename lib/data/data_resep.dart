import 'package:aplikasi_catatan_resep/models/makanan_resep.dart';
import 'package:flutter/material.dart';

import '../models/kategori_resep.dart';

const Kategori_Resep = [
  KategoriResep(
    id: "c1",
    titleKategori: "Junkfood",
    subtitleKategori: "Recipe",
    color: Colors.deepPurple,
  ),
  KategoriResep(
    id: "c2",
    titleKategori: "Healthy",
    subtitleKategori: "Recipe",
    color: Colors.deepPurple,
  ),
  KategoriResep(
    id: "c3",
    titleKategori: "Vegetarian",
    subtitleKategori: "Recipe",
    color: Colors.deepPurple,
  ),
  KategoriResep(
    id: "c4",
    titleKategori: "Drinks",
    subtitleKategori: "Recipe",
    color: Colors.deepPurple,
  ),
  KategoriResep(
    id: "c5",
    titleKategori: "Vegan",
    subtitleKategori: "Recipe",
    color: Colors.deepPurple,
  ),
];

const Makanan_Resep = [
  MakananResep(
      id: 'm1',
      categories: [
        'c1',
      ],
      namaMakanan: 'Hamburger',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
      ingredients: [
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
      ],
      preparation: [
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'
      ],
      nutrition: [
        '150 calories',
        '20 gram proteins',
        '500 gram carbs',
        '1000 gram fat',
      ],
      duration: 20,
      complexity: Complexity.Hard,
      affordability: Affordability.Luxurious,
      isGlutenFree: true,
      isLactoseFree: true,
      isVegan: true,
      isVegetarian: true),
  MakananResep(
      id: 'm2',
      categories: [
        'c1',
      ],
      namaMakanan: 'Mie Goreng',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
      ingredients: [
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
      ],
      preparation: [
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'
      ],
      nutrition: [
        '321 calories',
        '47 gram proteins',
        '480 gram carbs',
        '900 gram fat',
      ],
      duration: 20,
      complexity: Complexity.Hard,
      affordability: Affordability.Pricey,
      isGlutenFree: true,
      isLactoseFree: true,
      isVegan: true,
      isVegetarian: true),
  MakananResep(
      id: 'm3',
      categories: [
        'c1',
      ],
      namaMakanan: 'Pop Mie',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
      ingredients: [
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
      ],
      preparation: [
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
      ],
      nutrition: [
        '259 calories',
        '320 gram proteins',
        '587 gram carbs',
        '100 gram fat',
      ],
      duration: 20,
      complexity: Complexity.Hard,
      affordability: Affordability.Affordable,
      isGlutenFree: true,
      isLactoseFree: true,
      isVegan: true,
      isVegetarian: true),
];
