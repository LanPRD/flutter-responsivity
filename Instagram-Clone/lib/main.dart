import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:instagram_responsive_flutter/pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Responsive Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget!),
        defaultScale: true,
        minWidth: 450,
        defaultName: MOBILE,
        breakpoints: [
          const ResponsiveBreakpoint.resize(450, name: MOBILE),
          const ResponsiveBreakpoint.resize(700, name: "TABLET"),
          const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
        ],
      ),
      home: const HomePage(),
    );
  }
}
