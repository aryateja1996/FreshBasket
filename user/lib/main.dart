// ignore_for_file: import_of_legacy_library_into_null_safe, unnecessary_import

import 'package:app/exports.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: CartM()),
        ChangeNotifierProvider.value(value: LocationService())
      ],
      child: StreamProvider<UserLocation>(
          create: (context) => LocationService().locationStream,
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.green,
            ),
            home: const Splash(),
          )),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var userLocation = Provider.of<UserLocation>(context);
    return Scaffold(
      body: Center(
        child: Text(
            'Location: Lat:${userLocation.latitude}, Long: ${userLocation.longitude}'),
      ),
    );
  }
}
