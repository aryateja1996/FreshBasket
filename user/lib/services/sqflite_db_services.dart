// ignore_for_file: unnecessary_null_comparison, avoid_print

import 'package:app/exports.dart';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> initializeDb() async {
  var documentsDirectory = await getApplicationDocumentsDirectory();
  final database = openDatabase(
    // ignore: await_only_futures
    join(await documentsDirectory.path, 'cart.db'),
    onCreate: (db, version) {
      return db.execute('''CREATE TABLE cart(
          id VARCHAR(30) PRIMARY KEY,
          name VARCHAR(30),
          price REAL,
          quantity INTEGER,
          imgUrl VARCHAR(30),
          discount REAL,
          mrp REAL
          )''');
    },
    version: 1,
  );
  return database;
}

class DatabaseService {
  DatabaseService._privateConstructor();
  final DatabaseService instance = DatabaseService._privateConstructor();

  static late Database _database;

  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await _initDB('cart.db');
    return _database;
  }

  Future<Database> _initDB(String fp) async {
    var documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, fp);
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''CREATE TABLE cart(
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          name VARCHAR(30),
          price REAL,
          quantity INTEGER,
          imgUrl VARCHAR(30),
          discount REAL,
          mrp REAL
          )''');
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }

  Future<CartItem> create(CartItem cart) async {
    final db = await instance.database;

    await db.insert('cart', cart.toMap());
    return cart;
  }

  Future<List<Map<String, Object?>>> getItems() async {
    final db = await instance.database;
    List<String> values = [
      'id',
      'name',
      'quantity',
      'price',
      'discount',
      'mrp',
      'imgUrl'
    ];

    final maps = await db.query('cart', columns: values);
    print(maps[0]['quantity']);

    return maps;
  }
}
