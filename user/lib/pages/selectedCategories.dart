// ignore_for_file: sized_box_for_whitespace, unnecessary_import, file_names

import 'package:app/exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SelectedCategories extends StatefulWidget {
  final String selectedCategory;
  const SelectedCategories({Key? key, required this.selectedCategory})
      : super(key: key);

  @override
  _SelectedCategoriesState createState() => _SelectedCategoriesState();
}

class _SelectedCategoriesState extends State<SelectedCategories> {
  @override
  Widget build(BuildContext context) {
    if (widget.selectedCategory == "Meat") {
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.selectedCategory),
        ),
        drawer: drawerWidget(context),
        body: meat(context),
      );
    }
    if (widget.selectedCategory == "Dairy Products") {
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.selectedCategory),
        ),
        drawer: drawerWidget(context),
        body: const Center(
          child: Text('Coming Soon'),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.selectedCategory),
      ),
      drawer: drawerWidget(context),
      body: const Center(
        child: Text('Coming Soon'),
      ),
    );
  }
}

/*

Meat Categorie Products 


*/

Widget meat(BuildContext context) {
  List<String> name = ['Chicken', 'Mutton', 'Fish', 'Prawns', 'Eggs'];
  return ListView.builder(
      itemCount: 5,
      itemBuilder: (ctx, i) {
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (ctx) => ItemSelection(selectedItem: name[i])));
          },
          child: Container(
            width: 100,
            height: 200,
            color: Colors.green,
            margin: const EdgeInsets.all(7),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/Meat/$i.jpg',
                    fit: BoxFit.cover,
                  ),
                  height: double.infinity,
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.black45,
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Center(
                    child: Text(
                      name[i],
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      });
}

/*

Dairy Product Category Products

*/