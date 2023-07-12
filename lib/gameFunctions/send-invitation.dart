// ignore_for_file: invalid_return_type_for_catch_error, file_names

import 'package:cloud_functions/cloud_functions.dart';

void inviteFriend(String senderName, String receiverFcmToken) {
  FirebaseFunctions functions = FirebaseFunctions.instance;

  final HttpsCallable callable = functions.httpsCallable('sendInvite');

  callable.call(<String, dynamic>{
    'senderName': senderName,
    'receiverFcmToken': receiverFcmToken,
  }).then((HttpsCallableResult result) {
    // ignore: avoid_print
  }).catchError((error) => print('Error: $error'));
}
