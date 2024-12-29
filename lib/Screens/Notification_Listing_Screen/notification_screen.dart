// 🐦 Flutter imports:
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  NotificationScreen({Key key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
      ),
      body: ListView.builder(
        itemCount: 0,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Hello world!!'),
            subtitle: Text(
              'This is an awesome app please try it out.',
            ),
          );
          // return Container(
          //   height: 56,
          //   width: double.infinity,
          //   margin: EdgeInsets.all(16),
          //   color: Colors.red,
          // );
        },
      ),
    );
  }
}
