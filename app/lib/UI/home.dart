import 'package:app/exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const CustText(data: 'Home',textStyle: TextStyle()),),
      drawer: const Drawer(),
      body: Center(
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
             const CustText(data: 'Categorios',textStyle: TextStyle(fontSize: 50
             )),
             const SizedBox(height: 10,),
              
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
               itemCount: 4,
               itemBuilder: (ctx, i){
                 return InkWell(
                onTap: () {
                  
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
                          'assets/1.jpg',
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
                            i.toString(),
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
  }
}