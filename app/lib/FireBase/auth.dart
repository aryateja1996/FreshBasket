import 'package:app/exports.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<void> login(BuildContext context) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: logEmail, password: logPassword);
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => Home(),
          ),
          (route) => false);
    } catch (e) {
      
    }
  }

  //101423209315

  Future<void> _showMyDialogError(text ,BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Error'),
          content: Text(text),
          actions: <Widget>[
            TextButton(
              child: const Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> signUp( BuildContext context) async {
    if (regName != null && regPhone != null && regAddress != null && regEmail != null ) {
      try {
      var result = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: regEmail, password: regPassword);
    } catch (e) {
     
    }
    var result;
    await FirebaseFirestore.instance
        .collection("user")
        .doc(result.user.uid)
        .set({
      "username": regName,
      "phone": regPhone,
      "address": regAddress,
      "email": regEmail,
    });
    await Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => Home()), (route) => false);
    }else{
      _showMyDialogError('Please Enter All the Details' , context);
    }
  }
