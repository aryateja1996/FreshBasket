// ignore_for_file: deprecated_member_use, unnecessary_const, avoid_unnecessary_containers

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class StorySlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CarouselSlider(
      //enlargeCenterPage: false,
      //enableInfiniteScroll: false,
      //height: 154,
      items: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
          child: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "The story of a 4-Year-old start-up building india's most lovedd meat, seafood & meat pr...",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                  child: Container(
                      height: 70,
                      alignment: Alignment.center,
                      child: RaisedButton(
                        color: Colors.black,
                        child: const Text(
                          "Discovery",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {},
                      )),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
          child: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "What Licious needs to organise India's 30B dolar meat consumption market",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                  child: Container(
                      height: 70,
                      alignment: Alignment.center,
                      child: Column(
                        children: const <Widget>[
                          Text(
                            "YOUR",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "STORY",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
          child: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "Licious Embarks on a Transformational Journey; Launches Rrnrerf Brand Identity",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Container(
                      height: 50,
                      alignment: Alignment.center,
                      child: RaisedButton(
                        color: Colors.black,
                        child: const Text(
                          "Discovery",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {},
                      )),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
          child: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "The story of a 4-Year-old start-up building india's most lovedd meat, seafood & meat pr...",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Container(
                      height: 50,
                      alignment: Alignment.center,
                      child: RaisedButton(
                        color: Colors.black,
                        child: const Text(
                          "Discovery",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {},
                      )),
                )
              ],
            ),
          ),
        )
      ],
      options: CarouselOptions(),
    ));
  }
}
