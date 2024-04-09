import 'package:flutter/material.dart';
import '../firebase_options.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:rxdart/rxdart.dart';

final _messageStreamController = BehaviorSubject<RemoteMessage>();
// TODO: Define the background message handler
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();

  if (kDebugMode) {
    print("Handling a background message: ${message.messageId}");
    print('Message data: ${message.data}');
    print('Message notification: ${message.notification?.title}');
    print('Message notification: ${message.notification?.body}');
  }
}

class FirebaseApi{

  Future<void> initPushNotifications() async{
    final messaging = FirebaseMessaging.instance;

    final settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

// TODO: replace with your own VAPID key
    const vapidKey = "BK2Fq4Xs9LADZ7jhI-vCJiprjmG0UejhcLws3l6dr3V8pqB2sMZPEHZmDbccuMfxKLALW7rIQyFNg9vXSz10dJk";

    // use the registration token to send messages to users from your trusted server environment
    String? token;

    if (DefaultFirebaseOptions.currentPlatform == DefaultFirebaseOptions.ios) {
      token = await messaging.getToken(
        vapidKey: vapidKey,
      );
    } else {
      token = await messaging.getToken();
    }

    if (kDebugMode) {
      print('Registration Token=$token');
    }

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (kDebugMode) {
        print('Handling a foreground message: ${message.messageId}');
        print('Message data: ${message.data}');
        print('Message notification: ${message.notification?.title}');
        print('Message notification: ${message.notification?.body}');
      }

      _messageStreamController.sink.add(message);
    });

    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  }
}