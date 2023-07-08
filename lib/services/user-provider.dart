import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../models/user.dart';

class UserProvider with ChangeNotifier {
  KUser? _user;

  KUser? get user => _user;

  Future<void> fetchUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String username = prefs.getString('username')!;

    var snapshot = await FirebaseFirestore.instance
        .collection('Users')
        .where('username', isEqualTo: username)
        .get();

    var document = snapshot.docs.first;
    _user = KUser.fromMap(document.data());
    notifyListeners();
  }
}
