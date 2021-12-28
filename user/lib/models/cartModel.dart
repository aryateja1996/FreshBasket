// ignore_for_file: file_names, avoid_print

import 'package:app/exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';

class CartItem {
  final String id;
  final String name;
  final int quantity;
  final int price;
  final String imgUrl;
  final int discount;
  final int mrp;

  CartItem({
    required this.imgUrl,
    required this.id,
    required this.name,
    required this.quantity,
    required this.price,
    required this.discount,
    required this.mrp,
  });
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'quantity': quantity,
      'price': price,
      'discount': discount,
      'mrp': mrp,
      'imgUrl': imgUrl
    };
  }

  static final List<String> values = [
    'id',
    'name',
    'quantity',
    'price',
    'discount',
    'mrp',
    'imgUrl',
  ];
}

class CartM with ChangeNotifier {
  Map<String, CartItem> _items = {};
  // final dbReference = FirebaseDatabase.instance.reference();

  Map<String, CartItem> get items {
    return {..._items};
  }

  int get itemCount {
    return _items.length;
  }

  void addItem(String pdtid, String name, int price, int quantity,
      String imgUrl, int discount, int mrp) async {
    if (_items.containsKey(pdtid)) {
      _items.update(
          pdtid,
          (existingCartItem) => CartItem(
              id: pdtid,
              name: existingCartItem.name,
              quantity: existingCartItem.quantity,
              price: existingCartItem.price,
              imgUrl: existingCartItem.imgUrl,
              discount: existingCartItem.discount,
              mrp: existingCartItem.mrp));
    } else {
      _items.putIfAbsent(
          pdtid,
          () => CartItem(
                name: name,
                id: pdtid,
                quantity: quantity,
                price: price,
                imgUrl: imgUrl,
                discount: discount,
                mrp: mrp,
              ));
    }
    notifyListeners();
  }

  void removeItem(String id) {
    _items.remove(id);
    notifyListeners();
  }

  void removeSingleItem(String id) {
    if (!_items.containsKey(id)) {
      return;
    }
    if (_items[id]!.quantity >= 1) {
      _items.update(
          id,
          (existingCartItem) => CartItem(
              id: id,
              name: existingCartItem.name,
              quantity: existingCartItem.quantity - 1,
              price: existingCartItem.price,
              imgUrl: existingCartItem.imgUrl,
              discount: existingCartItem.discount,
              mrp: existingCartItem.mrp));
    }
    if (_items[id]!.quantity < 1) {
      _items.remove(id);
    }
    notifyListeners();
  }

  void addSingleItem(String id) {
    if (!_items.containsKey(id)) {
      return;
    }
    if (_items[id]!.quantity >= 1) {
      _items.update(
          id,
          (existingCartItem) => CartItem(
                id: id,
                name: existingCartItem.name,
                quantity: existingCartItem.quantity + 1,
                price: existingCartItem.price,
                imgUrl: existingCartItem.imgUrl,
                discount: existingCartItem.discount,
                mrp: existingCartItem.mrp,
              ));
    }
    notifyListeners();
  }

  double get totalAmount {
    var total1 = 0.0;
    _items.forEach((key, cartItem) {
      total1 += cartItem.price * cartItem.quantity;
    });
    return total1;
  }

  double get amount {
    var total = 0.0;
    for (var i = 0; i < cartItems.length; i++) {
      total += cartItems[i].price * cartItems[i].quantity;
    }
    return total;
  }

  double get totalDiscount {
    var total2 = 0.0;
    _items.forEach((key, cartItem) {
      total2 += cartItem.discount * cartItem.quantity;
    });
    return total2;
  }

  double get discount {
    double totalDiscount = 0.0;
    for (var i = 0; i < cartItems.length; i++) {
      totalDiscount += cartItems[i].discount * cartItems[i].quantity;
    }
    return totalDiscount;
  }

  void clear() {
    _items = {};
    notifyListeners();
  }

  Future<void> insertCart(CartItem item) async {
    final db = await initializeDb();
    print(item.id);
    await db.insert('cart', item.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<CartItem>> cartItem() async {
    final db = await initializeDb();
    final List<Map<String, dynamic>> maps = await db.query('cart');
    return List.generate(maps.length, (i) {
      return CartItem(
        imgUrl: maps[i]['imgUrl'],
        id: maps[i]['id'],
        name: maps[i]['name'],
        quantity: maps[i]['quantity'],
        price: maps[i]['price'],
        discount: maps[i]['discount'],
        mrp: maps[i]['mrp'],
      );
    });
  }

  update(CartItem item) async {
    final db = await initializeDb();
    await db.update('cart', item.toMap(), where: item.id);
  }

  Future<void> delete(String id) async {
    final db = await initializeDb();

    await db.delete(
      'cart',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  clearCart() async {
    final db = await initializeDb();
    await db.delete('cart');
  }
}

List<CartItem> cartItems = [];
/*
cartM.insertCart(
                          CartItem(
                            id: data[i]['name'] + quantity,
                            name: data[i]['name'],
                            imgUrl: data[i]['imgUrl'],
                            quantity: quantity,
                            price: data[i]['price'],
                            discount: data[i]['offer'],
                            mrp: data[i]['price'] - data[i]['offer'],
                          ),
                        );


 */