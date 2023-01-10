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
          'https://img.freepik.com/free-photo/front-view-tasty-meat-burger-with-cheese-salad-dark-background_140725-89597.jpg?w=996&t=st=1673340179~exp=1673340779~hmac=a737144e0a99f6390ef979f762eda0d167eef5a816328674c21ee649ce9ac6ca',
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
      duration: 10,
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
          'https://img.freepik.com/free-photo/noodles-with-pork-pork-balls-chilli-paste-with-soup-thai-style-vegetable-boat-noodles-selective-focus_1150-45661.jpg?w=996&t=st=1673340265~exp=1673340865~hmac=9cd9922dbe79af7b9d26e218ae1856198cdc267b7f826ee2a16143edd0033d5c',
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
          'https://img.freepik.com/premium-psd/noodle-cup-packaging-mockup_358694-4045.jpg?w=996',
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
      duration: 30,
      complexity: Complexity.Hard,
      affordability: Affordability.Affordable,
      isGlutenFree: true,
      isLactoseFree: true,
      isVegan: true,
      isVegetarian: true),
  
  MakananResep(
      id: 'm4',
      categories: [
        'c1',
      ],
      namaMakanan: 'Pizza',
      imageUrl:
          'https://img.freepik.com/free-photo/crispy-mixed-pizza-with-olives-sausage_140725-3095.jpg?w=740&t=st=1673339872~exp=1673340472~hmac=5efd9bbdc9cf0d46643f20d18440f851bfbe4a1c68421c5fff139b955a8afc9e',
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
      duration: 40,
      complexity: Complexity.Hard,
      affordability: Affordability.Affordable,
      isGlutenFree: true,
      isLactoseFree: true,
      isVegan: true,
      isVegetarian: true),
  
  MakananResep(
      id: 'm5',
      categories: [
        'c2',
      ],
      namaMakanan: 'Salad',
      imageUrl:
          'https://img.freepik.com/free-photo/flat-lay-salad-with-chicken-sesame-seeds_23-2148700369.jpg?w=996&t=st=1673340459~exp=1673341059~hmac=6fb75c31fc2506ef55f18f5c245bf08b6e970255695067207a53b3cb44c26a7c',
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
  
  MakananResep(
      id: 'm6',
      categories: [
        'c2',
      ],
      namaMakanan: 'Smoothies',
      imageUrl:
          'https://img.freepik.com/premium-photo/homemade-useful-fruit-smoothies-made-watermelon-melon-table-garden-horizontal-orientation-rustic-style_130716-2715.jpg?w=996',
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
  
  MakananResep(
      id: 'm7',
      categories: [
        'c2',
      ],
      namaMakanan: 'Soy Beans',
      imageUrl:
          'https://img.freepik.com/free-photo/soybeans-wooden-scoop-little-stone-mill_1387-406.jpg?w=996&t=st=1673340601~exp=1673341201~hmac=0e6bdfb7767869efba5b9cce53ba3e4efc61f01bc220a71495351eefa65a8eae',
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
  
  MakananResep(
      id: 'm8',
      categories: [
        'c2',
      ],
      namaMakanan: 'Fried Fish',
      imageUrl:
          'https://img.freepik.com/free-photo/fried-fish-carp-fresh-vegetable-salad-wooden-table_2829-19923.jpg?w=900&t=st=1673340671~exp=1673341271~hmac=c383a390ec6c4779e1e7c6029a37e9fd4a6928d102a95a73f61d39e64634c72a',
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
  
  MakananResep(
      id: 'm9',
      categories: [
        'c3',
      ],
      namaMakanan: 'Bolognese',
      imageUrl:
          'https://images.themodernproper.com/billowy-turkey/production/posts/2020/Vegan-Walnut-and-Lentil-Bolognese-8.jpg?w=667&auto=compress%2Cformat&fit=crop&dm=1610373930&s=0a1357db66a127859beed238eb491074',
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
 
  MakananResep(
      id: 'm10',
      categories: [
        'c3',
      ],
      namaMakanan: 'Vegetal Soup',
      imageUrl:
          'https://images.themodernproper.com/billowy-turkey/production/posts/2020/Vegetable-Soup-8.jpg?w=667&auto=compress%2Cformat&fit=crop&dm=1600877034&s=baf3c0cfe3e305a6890220fe88c54b36',
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
  
  MakananResep(
      id: 'm11',
      categories: [
        'c3',
      ],
      namaMakanan: 'Green Curry',
      imageUrl:
          'https://images.themodernproper.com/billowy-turkey/production/posts/2019/vegetarian-green-curry-budha-bowl-9.jpg?w=1200&auto=compress%2Cformat&fit=crop&dm=1599768683&s=b4693bfd57bdd263ca331568597db7b9',
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
      duration: 10,
      complexity: Complexity.Hard,
      affordability: Affordability.Luxurious,
      isGlutenFree: true,
      isLactoseFree: true,
      isVegan: true,
      isVegetarian: true),
  
  MakananResep(
      id: 'm12',
      categories: [
        'c3',
      ],
      namaMakanan: 'Vegetarian Enchiladas',
      imageUrl:
          'https://images.immediate.co.uk/production/volatile/sites/30/2011/01/Vegetarian-enchiladas-50345cc.jpg?quality=90&webp=true&resize=375,341',
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
      id: 'm13',
      categories: [
        'c4',
      ],
      namaMakanan: 'Margarita',
      imageUrl:
          'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/margarita-1592951298.jpg?crop=1xw:1xh;center,top&resize=980:*',
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
      duration: 30,
      complexity: Complexity.Hard,
      affordability: Affordability.Affordable,
      isGlutenFree: true,
      isLactoseFree: true,
      isVegan: true,
      isVegetarian: true),
  
  MakananResep(
      id: 'm14',
      categories: [
        'c4',
      ],
      namaMakanan: 'Cosmopolitan',
      imageUrl:
          'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/cosmopolitan-1592951320.jpg?crop=1xw:1xh;center,top&resize=980:*',
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
      duration: 40,
      complexity: Complexity.Hard,
      affordability: Affordability.Affordable,
      isGlutenFree: true,
      isLactoseFree: true,
      isVegan: true,
      isVegetarian: true),
  
  MakananResep(
      id: 'm15',
      categories: [
        'c4',
      ],
      namaMakanan: 'Negroni',
      imageUrl:
          'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/negroni-1592951342.jpg?crop=1xw:1xh;center,top&resize=980:*',
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
  
  MakananResep(
      id: 'm16',
      categories: [
        'c4',
      ],
      namaMakanan: 'Moscow Mule',
      imageUrl:
          'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/moscow-mule-1592951361.jpg?crop=1xw:1xh;center,top&resize=980:*',
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
  
  MakananResep(
      id: 'm17',
      categories: [
        'c5',
      ],
      namaMakanan: 'Nuts, Nuts Butter, Seed',
      imageUrl:
          'https://img.freepik.com/free-photo/different-dried-fruits_144627-16148.jpg?w=1060&t=st=1673343535~exp=1673344135~hmac=abb713e87bfb41ddd0f739e5c0af25d294dcb866d4cc4d6769c65e733edb7f8e',
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
  
  MakananResep(
      id: 'm18',
      categories: [
        'c5',
      ],
      namaMakanan: 'Hemp, Flax, Chia seeds',
      imageUrl:
          'https://img.freepik.com/free-photo/nutritious-chia-seeds-spoon-close-up_127675-2744.jpg?w=996&t=st=1673343820~exp=1673344420~hmac=9cfd15bc36e718558af3884fa4dee250a553761d8354fc3324dd368da31cc373',
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
  
  MakananResep(
      id: 'm19',
      categories: [
        'c5',
      ],
      namaMakanan: 'Tofu',
      imageUrl:
          'https://img.freepik.com/free-photo/tofu-made-from-soybeans-food-nutrition-concept_1150-26361.jpg?w=996&t=st=1673343904~exp=1673344504~hmac=66223bfdfc335534b86b5a7451bf2123f956d1d4dee6a5423588871412ca8f9f',
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
 
  MakananResep(
      id: 'm20',
      categories: [
        'c5',
      ],
      namaMakanan: 'Milk & Yogurt',
      imageUrl:
          'https://img.freepik.com/free-photo/yogurt-with-berries-muesli-breakfast-bowl-blue-background_123827-22587.jpg?w=996&t=st=1673343973~exp=1673344573~hmac=ccf6f6b339b2565e38581ec124cf428cca9207ba303468ead51045c2a288195d',
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
