import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/services/notification_service.dart';
import 'package:todo_app/services/theme_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var notifyHelper;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    notifyHelper = NotifyHeler();
    notifyHelper.initializeNotification();
    notifyHelper.requestIOSPermissions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: Column(
        children: const [Text('ThemeData')],
      ),
    );
  }
}

_appbar() {
  return AppBar(
    leading: GestureDetector(
      onTap: () {
        ThemeService().switchTheme();

        NotifyHeler().displayNotification(
            title: "Theme change",
            body: Get.isDarkMode
                ? "actvivated dark theme"
                : "activated lisght theme");

        NotifyHeler().scheduledNotification();
      },
      child: const Icon(
        Icons.nightlight_round_rounded,
        size: 20,
      ),
    ),
    actions: const [
      Icon(
        Icons.person,
        size: 20,
      ),
      SizedBox(
        width: 10,
      )
    ],
  );
}
