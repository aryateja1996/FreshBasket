export "./widgets/text.dart";
export './widgets/drawer.dart';
export './widgets/appbar.dart';
export './pages/home.dart';
export './pages/splash.dart';
export './pages/itemSelection.dart';
export './pages/selectedCategories.dart';
export './pages/product.dart';
export './models/user.dart';
export './models/cartModel.dart';
export './services/sqflite_db_services.dart';
export './services/firebase_auth_services.dart';
export './services/location_services.dart';

//common widgets

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Screen {
  Size screenSize;

  Screen(this.screenSize);

  double wp(percentage) {
    return percentage / 100 * screenSize.width;
  }

  double hp(percentage) {
    return percentage / 100 * screenSize.height;
  }
}
