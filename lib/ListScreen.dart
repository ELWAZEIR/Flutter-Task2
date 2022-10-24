// import 'dart:js';
// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:product/Data.dart';

class ListScreen extends StatelessWidget {
  // const ListScreen({super.key});
  Data pizza = Data();
//list view will Display My Section
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: pizza.SectionList.length,
        itemBuilder: (context, index) =>
            SectionItem(section: pizza.SectionList[index]),
      ),
    );
  }
}

//reusable Widget Which pass It to ListView Builder
class SectionItem extends StatelessWidget {
  Section section;
  SectionItem({required this.section});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: InkWell(
        child: Ink(
          color: Color.fromARGB(255, 221, 33, 93),
          child: ListTile(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(width: 3, color:Color.fromARGB(255, 2, 0, 1))),
            onTap: () {
              Navigator.pushNamed(context, "/product", arguments: {"id":section.id,"name":section.Name});
            },
            leading: Image.asset(section.img),
            title: Text(section.Name),
            subtitle: Text(section.Description),
          ),
        ),
      ),
    );
  }
}
