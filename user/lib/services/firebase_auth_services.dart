// ignore_for_file: unnecessary_import, unnecessary_null_comparison, unused_local_variable, prefer_typing_uninitialized_variables, await_only_futures

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
          builder: (context) => const Home(),
        ),
        (route) => false);
  } on FirebaseAuthException catch (e) {
    _showMyDialogError(e.code, context);
  }
}

//101423209315

Future<void> _showMyDialogError(text, BuildContext context) async {
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

Future<void> signUp(BuildContext context) async {
  if (regName != null &&
      regPhone != null &&
      regAddress != null &&
      regEmail != null) {
    try {
      var result = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: regEmail, password: regPassword);
    } on FirebaseAuthException catch (e) {
      _showMyDialogError(e.code, context);
    }
    var result;
    await FirebaseFirestore.instance
        .collection("user")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .set({
      "username": regName,
      "phone": regPhone,
      "address": regAddress,
      "email": regEmail,
      "lat": lat,
      "lon": lon,
    });
    DocumentSnapshot snapshot = await FirebaseFirestore.instance
        .collection('user')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();
    userModel = await UserModel.fromDocument(snapshot);
    await Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const Home()),
        (route) => false);
  } else {
    _showMyDialogError('Please Enter All the Details', context);
  }
}
