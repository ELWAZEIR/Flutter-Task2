import 'package:flutter/material.dart';

class pizza {
  int id;
  int CategoryId;
  int price;
  String Name;
  String image;
  pizza({
    required this.id,
    required this.CategoryId,
    required this.price,
    required this.Name,
    required this.image,
  });
}

class Section {
  int id;
  String Name;
  String Description;
  String img;
  Section({
    required this.id,
    required this.Description,
    required this.Name,
    required this.img,
  });
}

class Data {
  List<Section> SectionList = [
    Section(
        id: 1,
        Description: "Great pizza From domino's Pizza",
        Name: "domino's Pizza",
        img: "assets/img/1.webp"),
    Section(
        id: 2,
        Description: "Tasty Pizza From papa elwazir Pizza",
        Name: "elwazier Pizza",
        img: "assets/img/4.webp"),
    Section(
        id: 3,
        Description: "Tasty Pizza From Pizza hut Pizza",
        Name: "Pizza hut Pizza",
        img: "assets/img/7.png"),
    Section(
        id: 4,
        Description: "Tasty Pizza From Pizza Egypt Pizza",
        Name: "Egypt Pizza",
        img: "assets/img/4.webp"),
  ];

  List<pizza> PizzaList = [
    pizza(
        id: 1,
        CategoryId: 1,
        price: 10,
        Name: "pizza Chicken",
        image: "assets/img/5.jpg"),
    pizza(
        id: 1,
        CategoryId: 1,
        price: 20,
        Name: "pizza Cheese",
        image: "assets/img/8.jpg"),
    pizza(
        id: 1,
        CategoryId: 1,
        price: 30,
        Name: "pizza Meat",
        image: "assets/img/9.jpg"),
    pizza(
        id: 1,
        CategoryId: 1,
        price: 40,
        Name: "pizza Mix",
        image: "assets/img/5.jpg"),
    pizza(
        id: 1,
        CategoryId: 2,
        price: 23,
        Name: "pizza Chicken Flavor",
        image: "assets/img/7.png"),
    pizza(
        id: 1,
        CategoryId: 2,
        price: 27,
        Name: "pizza Cheese Flavor",
        image: "assets/img/3.jpg"),
    pizza(
        id: 1,
        CategoryId: 2,
        price: 100,
        Name: "pizza Mix",
        image: "assets/img/8.jpg"),
    pizza(
        id: 1,
        CategoryId: 2,
        price: 19,
        Name: "pizza Meat flavor",
        image: "assets/img/3.jpg"),
    pizza(
        id: 1,
        CategoryId: 3,
        price: 120,
        Name: "pizza Chicken Mix",
        image: "assets/img/2.jpg"),
    pizza(
        id: 1,
        CategoryId: 3,
        price: 30,
        Name: "pizza Vegatables",
        image: "assets/img/7.jpg"),
    pizza(
        id: 1,
        CategoryId: 3,
        price: 45,
        Name: "pizza Cheese Mix",
        image: "assets/img/1.webp"),
    pizza(
        id: 1,
        CategoryId: 4,
        price: 40,
        Name: "pizza Chicken",
        image: "assets/img/10.jpg"),
    pizza(
        id: 1,
        CategoryId: 4,
        price: 80,
        Name: "pizza Meat Mix",
        image: "assets/img/11.jpg"),
    pizza(
        id: 1,
        CategoryId: 4,
        price: 220,
        Name: "pizza Mix Of All",
        image: "assets/img/12.jpg"),
  ];

  List<pizza> filterBySection(int id) 
  {
    return this.PizzaList.where((element) => element.CategoryId == id).toList();
  }
}
