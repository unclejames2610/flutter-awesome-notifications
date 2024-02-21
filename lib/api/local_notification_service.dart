// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// class LocalNotificationService {
//   final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//       FlutterLocalNotificationsPlugin();

//   Future<void> init() async {
//     // Initialize native android notification
//     const AndroidInitializationSettings initializationSettingsAndroid =
//         AndroidInitializationSettings('@mipmap/ic_launcher');

//     // Initialize native Ios Notifications
//     const DarwinInitializationSettings initializationSettingsIOS =
//         DarwinInitializationSettings();

//     const InitializationSettings initializationSettings =
//         InitializationSettings(
//       android: initializationSettingsAndroid,
//       iOS: initializationSettingsIOS,
//     );

//     await flutterLocalNotificationsPlugin.initialize(
//       initializationSettings,
//     );

//     // Request permissions
//     await requestPermissions();
//   }

//    Future<void> requestPermissions() async {
//     // Request permission to display notifications on Android
//     const NotificationSettingsAndroid? androidSettings =
//         await flutterLocalNotificationsPlugin.getNotificationSettingsAndroid();
//     if (androidSettings?.requestedListener?.granted != true) {
//       await flutterLocalNotificationsPlugin
//           .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
//           ?.requestPermissions();
//     }

//     // Request permission to display notifications on iOS
//     await flutterLocalNotificationsPlugin
//         .resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>()
//         ?.requestPermissions(
//           alert: true,
//           badge: true,
//           sound: true,
//         );
//   }

//   void showNotificationAndroid(String title, String value) async {
//     const AndroidNotificationDetails androidNotificationDetails =
//         AndroidNotificationDetails('channel_id', 'Channel Name',
//             channelDescription: 'Channel Description',
//             importance: Importance.max,
//             priority: Priority.high,
//             ticker: 'ticker');

//     int notification_id = 1;
//     const NotificationDetails notificationDetails =
//         NotificationDetails(android: androidNotificationDetails);

//     await flutterLocalNotificationsPlugin.show(
//         notification_id, title, value, notificationDetails,
//         payload: 'Not present');
//   }

//   void showNotificationIos(String title, String value) async {
//     const DarwinNotificationDetails iOSPlatformChannelSpecifics =
//         DarwinNotificationDetails();

//     int notification_id = 1;

//     const NotificationDetails platformChannelSpecifics =
//         NotificationDetails(iOS: iOSPlatformChannelSpecifics);

//     await flutterLocalNotificationsPlugin.show(
//         notification_id, title, value, platformChannelSpecifics,
//         payload: 'Not present');
//   }
// }
