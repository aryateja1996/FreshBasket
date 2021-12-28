// ignore_for_file: unnecessary_cast, avoid_print, unused_local_variable, file_names, import_of_legacy_library_into_null_safe

import 'package:app/exports.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class ItemSelection extends StatefulWidget {
  String selectedItem;
  ItemSelection({Key? key, required this.selectedItem}) : super(key: key);

  @override
  _ItemSelectionState createState() => _ItemSelectionState();
}

class _ItemSelectionState extends State<ItemSelection> {
  String? dropdownValue = '';
  int quantity = 1;
  @override
  void initState() {
    super.initState();
    dropdownValue = widget.selectedItem;
  }

  @override
  Widget build(BuildContext context) {
    final cartM = Provider.of<CartM>(context, listen: false);
    final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance
        .collection('Products')
        .orderBy('type')
        .snapshots();
    return Scaffold(
      appBar: AppBar(
        title: drop(),
      ),
      drawer: drawerWidget(context),
      body: StreamBuilder<QuerySnapshot>(
        stream: _usersStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text("Loading");
          }
          /*
            children: snapshot.data!.data.map((DocumentSnapshot document) {
              Map<String, dynamic> data =
                  document.data()! as Map<String, dynamic>;
              Map<String, dynamic> data() {
                Map<String, dynamic> chicken = {};
                if (Map.from(data).containsValue('c')) {
                  chicken = data;
                  return chicken;
                }
                return chicken;
              }

              Map<String, dynamic> chicken = data();

              return ListTile(
                title: Text(chicken['name'] == null ? 'null' : chicken['name']),
              );
            }).toList(),
           
            */
          List<Map<String, dynamic>> data = [];

          // ignore: avoid_function_literals_in_foreach_calls
          snapshot.data!.docs.forEach((element) {
            String char = widget.selectedItem.toLowerCase()[0];
            if (element.data().containsValue(char)) {
              data.add(element.data());
            }
          });

          return data.isEmpty
              ? const Center(
                  child: Text('Comming Soon'),
                )
              : ListView.builder(
                  itemBuilder: (context, i) {
                    return builder(data, i);
                  },
                  itemCount: data.length,
                );
        },
      ),
    );
  }

  Widget builder(List<Map<String, dynamic>> data, int i) {
    return Container(
      width: 100,
      height: 420,
      //color: Colors.amber,
      decoration: const BoxDecoration(
        // color: Colors.amberAccent,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(1.0, 3.0), //(x,y)
            blurRadius: 5.0,
          ),
        ],
      ),
      margin: const EdgeInsets.all(10),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              data[i]['imgUrl'],
              height: 250,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Positioned(
            bottom: 1,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data[i]['name'].toUpperCase(),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: const TextStyle(fontSize: 20, color: Colors.black),
                ),
                const SizedBox(height: 10),
                Text(
                  data[i]['price'].toString() + ' / Kg',
                  style: const TextStyle(fontSize: 20, color: Colors.black),
                ),
                // const SizedBox(height: 5.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => ProDetails(
                                    product: data[i],
                                  ))),
                      child: Container(
                        width: 170,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        child: const Center(
                          child: Text(
                            'Details',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        CartM cartM =
                            Provider.of<CartM>(context, listen: false);

                        print(data[i]['price'].runtimeType);
                        cartM.addItem(
                          data[i]['name'].toString(),
                          data[i]['name'].toString(),
                          int.parse(data[i]['price'].toString()),
                          int.parse(quantity.toString()),
                          data[i]['imgUrl'].toString(),
                          data[i]['offer'],
                          data[i]['price'] - data[i]['offer'],
                        );
                        cartM.insertCart(
                          CartItem(
                            id: data[i]['name'],
                            name: data[i]['name'],
                            imgUrl: data[i]['imgUrl'],
                            quantity: quantity,
                            price: data[i]['price'],
                            discount: data[i]['offer'],
                            mrp: data[i]['price'] - data[i]['offer'],
                          ),
                        );
                      },
                      child: Container(
                        width: 170,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        child: const Center(
                          child: Text(
                            'Add',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget drop() {
    return DropdownButton<String>(
      dropdownColor: Colors.green,
      value: dropdownValue,
      icon: const Icon(
        Icons.arrow_downward,
        color: Colors.white,
      ),
      iconSize: 24,
      elevation: 16,
      // style: const TextStyle(color: Colors.deepPurple),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
          widget.selectedItem = newValue;
        });
      },
      items: <String>['Chicken', 'Mutton', 'Fish', 'Prawns', 'Eggs']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: const TextStyle(color: Colors.white, fontSize: 25),
          ),
        );
      }).toList(),
    );
  }
}
