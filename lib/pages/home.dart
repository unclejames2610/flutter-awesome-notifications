import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:local_notification/api/local_notification_service.dart';
import 'package:local_notification/api/notification_api.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Home")),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  child: Text("Simple Notification"),
                  onPressed: () {
                    // NotificationApi.showNotification(
                    //     title: "Ebuka",
                    //     body: "Look at this",
                    //     payload: 'ebuka.u');

                    // LocalNotificationService()
                    //     .showNotificationAndroid("Title", "value");

                    AwesomeNotifications().createNotification(
                      content: NotificationContent(
                        id: 1,
                        channelKey: "first",
                        title: "Hello World",
                        body: "Notification working",
                      ),
                    );
                  },
                ),
                TextButton(
                  child: Text("Schedule Notification"),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text("Remove Notification"),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ));
  }
}
