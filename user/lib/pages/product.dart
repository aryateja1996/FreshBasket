// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:app/exports.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';

class ProDetails extends StatefulWidget {
  final Map<String, dynamic> product;
  const ProDetails({Key? key, required this.product}) : super(key: key);

  @override
  _ProDetailsState createState() => _ProDetailsState();
}

class _ProDetailsState extends State<ProDetails> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    Function hp = Screen(MediaQuery.of(context).size).hp;
    Function wp = Screen(MediaQuery.of(context).size).wp;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(widget.product['name']),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: hp(30),
              width: double.infinity,
              child: Center(
                child: Image.network(
                  widget.product['imgUrl'],
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              widget.product['name'],
              style: TextStyle(
                fontSize: wp(10),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              '${widget.product['price']} /-',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Column(
              children: [
                Container(
                  // width: double.infinity,
                  //height: double.infinity,
                  child: Row(
                    children: [
                      Container(
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              child: IconButton(
                                icon: const Icon(Icons.minimize),
                                onPressed: () {
                                  setState(
                                    () {
                                      if (quantity <= 1) {
                                        quantity = 1;
                                      } else {
                                        quantity--;
                                      }
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(quantity.toString()),
                      IconButton(
                        icon: const Icon(
                          Icons.add,
                        ),
                        onPressed: () {
                          setState(() {
                            quantity++;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Text(
                  "You Save Rs ${widget.product['offer']}/-",
                  style: const TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontSize: 20,
                  ),
                ),
                // SizedBox(),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 1.5,
                      color: Colors.amber,
                    ),
                  ),
                  child: TextButton(
                    child: const Icon(Icons.favorite),
                    onPressed: () {},
                  ),
                ),
                SizedBox(width: wp(10)),
                Container(
                  width: wp(50),
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 1,
                      color: Colors.pink,
                    ),
                  ),
                  child: TextButton(
                    child: const Text('Add To Cart'),
                    onPressed: () {},
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
