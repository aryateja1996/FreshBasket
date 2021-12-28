// ignore_for_file: unnecessary_import, unused_import

import 'package:app/exports.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget drawerWidget(BuildContext context) {
  return Drawer(
    backgroundColor: Colors.blue,
    elevation: 10,
    child: ListView(
      padding: const EdgeInsets.all(20),
      children: [
        DrawerHeader(
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
          child: Column(
            children: const [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/logo.png'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Fresh Basket',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              Text('Eat healthy live healthy'),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 2,
          color: Colors.white,
        ),
        ListTile(
          leading: const Icon(
            Icons.home,
            color: Colors.white,
          ),
          title: const Text(
            'Home',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (ctx) => const Home()));
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.shopping_bag,
            color: Colors.white,
          ),
          title: const Text(
            'Orders',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (ctx) => const Home()));
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.phone,
            color: Colors.white,
          ),
          title: const Text(
            'Contact',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (ctx) => const Home()));
          },
        ),
        FirebaseAuth.instance.currentUser == null
            ? ListTile(
                leading: const Icon(
                  Icons.supervised_user_circle,
                  color: Colors.white,
                ),
                title: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => const Home()));
                },
              )
            : ListTile(
                leading: const Icon(
                  Icons.exit_to_app_rounded,
                  color: Colors.white,
                ),
                title: const Text(
                  'Sign Out',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => const Home()));
                },
              ),
      ],
    ),
  );
}
