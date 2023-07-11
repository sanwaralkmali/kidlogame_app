import 'package:cloud_functions/cloud_functions.dart';

void inviteFriend(String senderName, String receiverFcmToken) {
  FirebaseFunctions functions = FirebaseFunctions.instance;

  final HttpsCallable callable = functions.httpsCallable('sendInvite');
  print('Inviting friend...');

  callable.call(<String, dynamic>{
    'senderName': senderName,
    'receiverFcmToken': receiverFcmToken,
  }).then((HttpsCallableResult result) {
    print(result.data);
  }).catchError((error) => print('Error: $error'));
}
