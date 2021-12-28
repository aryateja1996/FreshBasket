// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class CategoryProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(1, 0, 3, 0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3.1,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(color: Colors.white, width: 3),
                        ),
                        child: Image.asset("image/img1.jpg"),
                      ),
                    ),
                    Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width / 3.1,
                        color: Colors.white,
                        alignment: Alignment.centerLeft,
                        child: Container(
                            alignment: Alignment.center,
                            child: const Text("Checken")))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 3),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3.1,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(color: Colors.white, width: 3),
                        ),
                        child: Image.asset("image/img2.jpg"),
                      ),
                    ),
                    Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width / 3.1,
                        color: Colors.white,
                        alignment: Alignment.centerLeft,
                        child: Container(
                            alignment: Alignment.center,
                            child: const Text("Mutton")))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 3),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3.1,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(color: Colors.white, width: 3),
                        ),
                        child: Image.asset("image/img3.jpg"),
                      ),
                    ),
                    Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width / 3.1,
                        color: Colors.white,
                        alignment: Alignment.centerLeft,
                        child: Container(
                            alignment: Alignment.center,
                            child: const Text("Fish")))
                  ],
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(1, 0, 3, 0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3.1,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(color: Colors.white, width: 3),
                        ),
                        child: Image.asset("image/img4.jpg"),
                      ),
                    ),
                    Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width / 3.1,
                        color: Colors.white,
                        alignment: Alignment.centerLeft,
                        child: Container(
                            alignment: Alignment.center,
                            child: const Text("Spread")))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 3),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3.1,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(color: Colors.white, width: 3),
                        ),
                        child: Image.asset("image/img5.jpg"),
                      ),
                    ),
                    Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width / 3.1,
                        color: Colors.white,
                        alignment: Alignment.centerLeft,
                        child: Container(
                            alignment: Alignment.center,
                            child: const Text("Cold Cuts")))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 3),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3.1,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(color: Colors.white, width: 3),
                        ),
                        child: Image.asset("image/img6.jpg"),
                      ),
                    ),
                    Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width / 3.1,
                        color: Colors.white,
                        alignment: Alignment.centerLeft,
                        child: Container(
                            alignment: Alignment.center,
                            child: const Text("Kababs")))
                  ],
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(1, 0, 3, 0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3.1,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(color: Colors.white, width: 3),
                        ),
                        child: Image.asset("image/img7.jpg"),
                      ),
                    ),
                    Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width / 3.1,
                        color: Colors.white,
                        alignment: Alignment.centerLeft,
                        child: Container(
                            alignment: Alignment.center,
                            child: const Text("Exotic")))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 3),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3.1,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(color: Colors.white, width: 3),
                        ),
                        child: Image.asset("image/img8.jpg"),
                      ),
                    ),
                    Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width / 3.1,
                        color: Colors.white,
                        alignment: Alignment.centerLeft,
                        child: Container(
                            alignment: Alignment.center,
                            child: const Text("Eggs")))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 3),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3.1,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(color: Colors.white, width: 3),
                        ),
                        child: Image.asset("image/img1.jpg"),
                      ),
                    ),
                    Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width / 3.1,
                        color: Colors.white,
                        alignment: Alignment.centerLeft,
                        child: Container(
                            alignment: Alignment.center,
                            child: const Text("checken")))
                  ],
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(1, 0, 3, 5),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3.1,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(color: Colors.white, width: 3),
                        ),
                        child: Image.asset("image/img10.jpg"),
                      ),
                    ),
                    Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width / 3.1,
                        color: Colors.white,
                        alignment: Alignment.centerLeft,
                        child: Container(
                            alignment: Alignment.center,
                            child: const Text("Checken")))
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
