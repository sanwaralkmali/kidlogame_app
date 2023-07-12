// ignore_for_file: unnecessary_null_comparison, file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:kidlogame_app/models/user.dart';

Future<KUser> fetchUser(String username) async {
  await Firebase.initializeApp();

  // If the username is null, throw an exception
  if (username == null) {
    throw Exception('User Not Found');
  }

  var snapshot = await FirebaseFirestore.instance
      .collection('Users')
      .where('username', isEqualTo: username)
      .get();

  var document = snapshot.docs.first;
  return KUser.fromMap(document.data());
}
