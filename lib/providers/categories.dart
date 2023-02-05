import 'package:login_app/models/category.dart';
import 'package:flutter/material.dart';

class Categories with ChangeNotifier{
  List<Category> categoriesList = [

    Category(
      categoryTitle: 'Coding Languages',
      categoryLink: 'code',
      iconLink: 'assets/category/code.png'
    ),
    Category(
        categoryTitle: 'Data Structures',
        categoryLink: 'dsa',
        iconLink: 'assets/code.png'
    ),
    Category(
        categoryTitle: 'Operating Systems',
        categoryLink: 'os',
        iconLink: 'assets/code.png'
    ),
    Category(
        categoryTitle: 'Computer Architecture',
        categoryLink: 'comp arch',
        iconLink: 'assets/code.png'
    ),
    Category(
        categoryTitle: 'Database Management Systems',
        categoryLink: 'dbms',
        iconLink: 'assets/code.png'
    ),
    Category(
        categoryTitle: 'Object Oriented Analysis & Design',
        categoryLink: 'ooad',
        iconLink: 'assets/code.png'
    ),
    Category(
        categoryTitle: 'Artificial Intelligence & Machine Learning',
        categoryLink: 'aiml',
        iconLink: 'assets/code.png'
    ),
    Category(
        categoryTitle: 'Distributed Computing',
        categoryLink: 'dc',
        iconLink: 'assets/code.png'
    ),
    Category(
        categoryTitle: 'Theory of Computing',
        categoryLink: 'toc',
        iconLink: 'assets/code.png'
    ),



  ]
}