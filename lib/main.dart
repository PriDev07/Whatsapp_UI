import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:whatsapp_ui/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return MaterialApp(
          title: 'Whatsapp',
          theme: ThemeData(
              primaryColor: Color(0xffffffff),
              textTheme: Typography.whiteHelsinki),
          home: const MyHomepage(),
        );
      },
    );
  }
}
