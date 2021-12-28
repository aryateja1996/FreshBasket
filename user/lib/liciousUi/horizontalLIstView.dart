// ignore_for_file: file_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            border: Border(top: BorderSide(color: Colors.grey, width: 1)),
            color: Colors.white),
        height: 60,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 6, 3),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Icon(Icons.block, color: Colors.red)),
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text(
                        "Weekend Feast",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 6, 3),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Icon(Icons.child_care, color: Colors.red)),
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text(
                        "Chicken",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 6, 3),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Icon(Icons.device_hub, color: Colors.red)),
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text(
                        "Mutton",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 6, 3),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Icon(Icons.gesture, color: Colors.red)),
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text(
                        "Fish & Seafood",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 6, 3),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child:
                            const Icon(Icons.all_inclusive, color: Colors.red)),
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text(
                        "Ready to Cook",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 6, 3),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Icon(Icons.confirmation_number,
                            color: Colors.red)),
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text(
                        "Speads",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
