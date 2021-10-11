import 'package:firebase_messaging/firebase_messaging.dart';

Future<void> fcmBackgroundHandler(RemoteMessage message) async {
  print('Got a message whilst in the background or terminated!');
  print('Message data: ${message.data}');

  if (message.notification != null) {
    print('Message also contained a notification: ${message.notification}');
  }
}

class Fcm {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;

  Future<void> requestFcmPermission() async {
    NotificationSettings settings = await messaging.getNotificationSettings();
    if (settings.authorizationStatus == AuthorizationStatus.notDetermined) {
      settings = await messaging.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
        sound: true,
      );
    }
    print('User granted permission: ${settings.authorizationStatus}');
  }

  static configureFcmMessage() async {

    RemoteMessage? initialMessage = await messaging.getInitialMessage();

    if (initialMessage != null) {
      print('Initial message found ');
      print('Message data: ${initialMessage.data}');

      if (initialMessage.notification != null) {
        print(
            'Message also contained a notification: ${initialMessage.notification}');
      }
    }

    await messaging.getToken();

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Got a message whilst in the foreground!');
      print('Message data: ${message.data}');

      if (message.notification != null) {
        print('Message also contained a notification: ${message.notification}');
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('Got a message whilst in background! on opened app callback');
      print('Message data: ${message.data}');

      if (message.notification != null) {
        print('Message also contained a notification: ${message.notification}');
      }
    });

    FirebaseMessaging.onBackgroundMessage(fcmBackgroundHandler);
  }
}
