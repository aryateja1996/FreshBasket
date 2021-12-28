// ignore_for_file: unused_local_variable, avoid_print, import_of_legacy_library_into_null_safe, unnecessary_import, sized_box_for_whitespace, unnecessary_const

import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:app/exports.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

UserModel? userModel;
List<Map<String, dynamic>?>? docs;

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  Future<UserModel?> getUserDetails() async {
    String? userId = FirebaseAuth.instance.currentUser!.uid;
    DocumentSnapshot snapshot =
        await FirebaseFirestore.instance.collection('user').doc(userId).get();
    userModel = UserModel.fromDocument(snapshot);
    print(userId);
    getDocumentId();
    return userModel;
  }

  void getDocumentId() async {
    CollectionReference colref =
        FirebaseFirestore.instance.collection('Products');

    final QuerySnapshot result = await colref.get();

    final List<DocumentSnapshot> documents = result.docs;

    for (var data in documents) {}
  }

  @override
  void initState() {
    setState(() {});
    super.initState();
    Duration duration = const Duration(seconds: 5);
    Future.delayed(duration, () {
      getUserDetails();
    }); /*
    */
  }

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    UserLocation userLocation =
        Provider.of<UserLocation>(context, listen: false);
    lat = userLocation.latitude;
    lon = userLocation.longitude;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 20),
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: const Image(
                image: const AssetImage('assets/o.png'),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * .22,
              child: CarouselSlider(
                items: [
                  //1st Image of Slider
                  Container(
                    margin: const EdgeInsets.all(6.0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: const DecorationImage(
                        image: AssetImage("assets/splash_carousel/1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: const [
                        Text(
                          'Freshest chicken, mutton and seafood in town, delivered home',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),

                  //2nd Image of Slider
                  Container(
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: const DecorationImage(
                        image: AssetImage("assets/splash_carousel/2.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //3rd Image of Slider
                  Container(
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: const DecorationImage(
                        image: AssetImage("assets/splash_carousel/1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //4th Image of Slider
                  Container(
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: const DecorationImage(
                        image: AssetImage("assets/splash_carousel/3.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //5th Image of Slider
                  Container(
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: const DecorationImage(
                        image: AssetImage("assets/splash_carousel/1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],

                //Slider Container properties
                options: CarouselOptions(
                  height: MediaQuery.of(context).size.height * .4,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(seconds: 8),
                  viewportFraction: 0.8,
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              left: MediaQuery.of(context).size.width * .1,
              child: Container(
                width: MediaQuery.of(context).size.width * .8,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(7)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.gps_fixed,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      child: const Text(
                        'DELIVER TO CURRENT LOCATION',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      onTap: () async {
                        Duration duration = const Duration(seconds: 8);
                        Timer(duration, () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (ctx) => const Home()),
                            (route) => false,
                          );
                        });
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
