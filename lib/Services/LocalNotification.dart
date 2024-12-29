import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotification {
  FlutterLocalNotificationsPlugin _notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  void selectNotification(String payload) async {
    if (payload != null) {
      debugPrint('notification payload: $payload');
    }
    // await Navigator.push(
    //   context,
    //   MaterialPageRoute<void>(builder: (context) => SecondScreen(payload)),
    // );
  }

  void onDidReceiveLocalNotification(
      int id, String title, String body, String payload) async {
    // display a dialog with the notification details, tap ok to go to another page
    // showDialog(
    //   context: context,
    //   builder: (BuildContext context) => CupertinoAlertDialog(
    //     title: Text(title),
    //     content: Text(body),
    //     actions: [
    //       CupertinoDialogAction(
    //         isDefaultAction: true,
    //         child: Text('Ok'),
    //         onPressed: () async {
    //           Navigator.of(context, rootNavigator: true).pop();
    //           await Navigator.push(
    //             context,
    //             MaterialPageRoute(
    //               builder: (context) => SecondScreen(payload),
    //             ),
    //           );
    //         },
    //       )
    //     ],
    //   ),
    // );
  }

  void intialise() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    final IOSInitializationSettings initializationSettingsIOS =
        IOSInitializationSettings(
            onDidReceiveLocalNotification: onDidReceiveLocalNotification);
    final InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );
    await _notificationsPlugin.initialize(initializationSettings,
        onSelectNotification: selectNotification);
    weekByWeekNotification();
  }

  void weekByWeekNotification() async {
    var androidPlatformChannelSpecifics = new AndroidNotificationDetails(
        'weekly', 'Weekly Updates', 'Weekly pregnancy tips and baby updates',
        importance: Importance.max, priority: Priority.high);
    var iOSPlatformChannelSpecifics = new IOSNotificationDetails();

    var platformChannelSpecifics = new NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS: iOSPlatformChannelSpecifics);
    _notificationsPlugin.periodicallyShow(
        1,
        'Hey mom!',
        'Check how big you\'re baby has grown',
        RepeatInterval.weekly,
        platformChannelSpecifics);
  }
}
// void callbackDispatcher() {
//   Workmanager().executeTask((task, inputData) {
//     // initialise the plugin of flutterlocalnotifications.
//     FlutterLocalNotificationsPlugin flip =
//         new FlutterLocalNotificationsPlugin();

//     // app_icon needs to be a added as a drawable
//     // resource to the Android head project.
//     var android = new AndroidInitializationSettings(c);
//     var IOS = new IOSInitializationSettings();

//     // initialise settings for both Android and iOS device.
//     var settings = new InitializationSettings(android: android, iOS: IOS);
//     flip.initialize(settings);
//     _showNotificationWithDefaultSound(flip);
//     return Future.value(true);
//   });
// }

// Future _showNotificationWithDefaultSound(flip) async {
//   // Show a notification after every 15 minute with the first
//   // appearance happening a minute after invoking the method
//   var androidPlatformChannelSpecifics = new AndroidNotificationDetails(
//       'your channel id', 'your channel name', 'your channel description',
//       importance: Importance.max, priority: Priority.high);
//   var iOSPlatformChannelSpecifics = new IOSNotificationDetails();

//   // initialise channel platform for both Android and iOS device.
//   var platformChannelSpecifics = new NotificationDetails(
//       android: androidPlatformChannelSpecifics,
//       iOS: iOSPlatformChannelSpecifics);
//   await flip.show(0, 'See how much you\'re baby has grown',
//       'Open the app to know about this week tips', platformChannelSpecifics,
//       payload: 'Default_Sound');
// }
