// ignore_for_file: sized_box_for_whitespace, unnecessary_import, avoid_print, import_of_legacy_library_into_null_safe, non_constant_identifier_names, unnecessary_const

import 'package:app/exports.dart';
import 'package:app/liciousUi/export.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? searched;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 70,
        // color: Colors.black,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            const BoxShadow(
              // color: Colors.black,
              blurRadius: 2,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (ctx) => const Home()),
                          (route) => false);
                    },
                    icon: const Icon(Icons.home)),
                const Text('Home')
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (ctx) => const Home()),
                        (route) => false);
                  },
                  icon: const Icon(Icons.favorite),
                ),
                const Text('Favorites'),
              ],
            ),
            Column(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (ctx) => const Home()),
                          (route) => false);
                    },
                    icon: const Icon(Icons.category)),
                const Text('Categories'),
              ],
            ),
            Column(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (ctx) => const Home()),
                          (route) => false);
                    },
                    icon: const Icon(Icons.shopping_cart)),
                const Text('Cart')
              ],
            ),
            Column(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (ctx) => const Home()),
                          (route) => false);
                    },
                    icon: const Icon(Icons.account_circle)),
                const Text('Account'),
              ],
            ),
          ],
        ),
      ),
      drawer: drawerWidget(context),
      appBar: AppBar(
        toolbarHeight: 80,
        flexibleSpace: Stack(
          children: [
            Positioned(
              right: 0,
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.7,
                //color: Colors.white,
                margin: const EdgeInsets.only(right: 10, bottom: 10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.search),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: TextField(
                        decoration: const InputDecoration(
                            hintText: 'Enter Product Name To Search'),
                        onChanged: (value) {
                          searched = value;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              bottom: 0,
            )
          ],
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              height: 200.0,
              child: Carousel(
                boxFit: BoxFit.cover,
                images: const [
                  AssetImage('assets/lic/img1.jpg'),
                  AssetImage('assets/lic/img2.jpg'),
                  AssetImage('assets/lic/img3.jpg'),
                  AssetImage('assets/lic/img4.jpg'),
                  AssetImage('assets/lic/img5.jpg'),
                ],
                autoplay: true,
                dotSize: 4.0,
                dotColor: Colors.yellow,
                indicatorBgPadding: 2.0,
                animationCurve: Curves.fastOutSlowIn,
                animationDuration: const Duration(microseconds: 1000),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.amber,
            )
          ],
        ),
      ),
    );
  }
}
/*
 print(lat);
    // ignore: unnecessary_new
    Widget image_carsousal = new Container(
        height: 150.0,
        child: Carousel(
          boxFit: BoxFit.cover,
          images: const [
            AssetImage('assets/lic/img1.jpg'),
            AssetImage('assets/lic/img2.jpg'),
            AssetImage('assets/lic/img3.jpg'),
            AssetImage('assets/lic/img4.jpg'),
            AssetImage('assets/lic/img5.jpg'),
          ],
          autoplay: true,
          dotSize: 4.0,
          dotColor: Colors.yellow,
          indicatorBgPadding: 2.0,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: const Duration(microseconds: 1000),
        ));
    List<String> imgs = ['meat.jpg', 'dairy.jpeg', 'veggies.jpg'];
    List<String> name = ['Meat', 'Dairy Products', 'Vegetables'];
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: drawerWidget(context),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HorizontalList(),
            image_carsousal,
            Container(
              color: Colors.grey[50],
              padding: const EdgeInsets.all(10),
              child: Image.asset("assets/lic/img14.jpg"),
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemCount: 3,
                  itemBuilder: (ctx, i) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SelectedCategories(
                                      selectedCategory: name[i],
                                    )));
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
                                'assets/Categories/${imgs[i]}',
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
                  }),
            ),
          ],
        ),
      ),
    );

 */