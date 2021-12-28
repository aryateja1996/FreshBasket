// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  _MyAppBarState createState() => _MyAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.grey[600]),
      title: Container(
        height: 100,
        width: 100,
        alignment: Alignment.centerLeft,
        child: const Image(
          image: ExactAssetImage('assets/o.png'),
          alignment: FractionalOffset.centerLeft,
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.grey[600],
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.person,
            color: Colors.grey[600],
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.shopping_cart,
            color: Colors.grey[600],
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
