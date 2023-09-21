import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/view/changeTheme.dart';
import 'package:learn_getx/view/screenone.dart';
import 'package:learn_getx/view/screentwo.dart';
import 'package:learn_getx/view/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: DashBoard() ,
      getPages: [
        GetPage(name: "/", page: () => const ChangeTheme()),
        GetPage(name: "/screenone", page: () => const ScreenOne()),
        GetPage(name: "/screentwo", page: () => const ScreenTwo(name: "farman",)),
      ],
      // home:  ChangeTheme(),
    );
  }
}
