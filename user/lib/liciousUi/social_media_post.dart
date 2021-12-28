// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SocialMediaSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CarouselSlider(options: CarouselOptions(), items: <Widget>[
      Padding(
        padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
          ),
          child: Column(
            children: <Widget>[
              Container(
                child: Image.asset("image/img25.jpg"),
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                ),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                        height: 40,
                        child: Row(
                          children: <Widget>[
                            Container(
                                alignment: Alignment.centerLeft,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue,
                                ),
                                child: const Icon(Icons.person)),
                            Container(
                                alignment: Alignment.centerRight,
                                child: const Text(
                                  "chandanpradhan123",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black87),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                height: 20,
                                width: 20,
                                alignment: Alignment.centerRight,
                                child: Image.asset("image/instagram.png"),
                              ),
                            ),
                            Container(
                                alignment: Alignment.centerRight,
                                child: const Text(
                                  "Instagram",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black87),
                                )),
                          ],
                        )),
                  ),
                  const Divider(
                    height: 2,
                    color: Colors.black87,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: Container(
                        child: Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Customer service has never disappointed",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Grilled Checken Rolls",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
          ),
          child: Column(
            children: <Widget>[
              Container(
                child: Image.asset("image/img29.jpg"),
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                ),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                        height: 40,
                        child: Row(
                          children: <Widget>[
                            Container(
                                alignment: Alignment.centerLeft,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.yellow),
                                child: const Icon(Icons.person)),
                            Container(
                                alignment: Alignment.centerRight,
                                child: const Text(
                                  "chandanpradhan123",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black87),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                height: 20,
                                width: 20,
                                alignment: Alignment.centerRight,
                                child: Image.asset("image/instagram.png"),
                              ),
                            ),
                            Container(
                                alignment: Alignment.centerRight,
                                child: const Text(
                                  "Instagram",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black87),
                                )),
                          ],
                        )),
                  ),
                  const Divider(
                    height: 2,
                    color: Colors.black87,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: Container(
                        child: Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          child: const Text(
                            "@licious_foods ???? Absolutely no hope for team india?????",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Nagaland Pops",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
          ),
          child: Column(
            children: <Widget>[
              Container(
                child: Image.asset("image/img27.jpg"),
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                ),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                        height: 40,
                        child: Row(
                          children: <Widget>[
                            Container(
                                alignment: Alignment.centerLeft,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.pink,
                                ),
                                child: const Icon(Icons.person)),
                            Container(
                                alignment: Alignment.centerRight,
                                child: const Text(
                                  "LuckysFooddiary",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black87),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                height: 20,
                                width: 20,
                                alignment: Alignment.centerRight,
                                child: Image.asset("image/instagram.png"),
                              ),
                            ),
                            Container(
                                alignment: Alignment.centerRight,
                                child: const Text(
                                  "Instagram",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black87),
                                )),
                          ],
                        )),
                  ),
                  const Divider(
                    height: 2,
                    color: Colors.black87,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: Container(
                        child: Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "The best thing about them is they are really hygienic",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Caribbean jerk Chicken Salad",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
          ),
          child: Column(
            children: <Widget>[
              Container(
                child: Image.asset("image/img20.jpg"),
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                ),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                        height: 40,
                        child: Row(
                          children: <Widget>[
                            Container(
                                alignment: Alignment.centerLeft,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                ),
                                child: const Icon(Icons.person)),
                            Container(
                                alignment: Alignment.centerRight,
                                child: const Text(
                                  "mrs_sambar",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black87),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Container(
                                height: 20,
                                width: 20,
                                alignment: Alignment.centerRight,
                                child: Image.asset("image/instagram.png"),
                              ),
                            ),
                            Container(
                                alignment: Alignment.centerRight,
                                child: const Text(
                                  "Instagram",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black87),
                                )),
                          ],
                        )),
                  ),
                  const Divider(
                    height: 2,
                    color: Colors.black87,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: Container(
                        child: Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Eggs is definitely not as easy as it looks. @licious_foods",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Poached Egg",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                  )
                ],
              )
            ],
          ),
        ),
      )
    ]));
  }
}
