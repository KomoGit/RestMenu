import 'package:flutter/material.dart';
// import 'package:restmenu/Logic/menu_provider.dart';
import 'package:restmenu/Views/ui_menu.dart';
// import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

//If you see whole bunch of code commented, it is artifacts of me trying to use standart PocketBase.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MultiProvider(
    //     providers: [
    //       ChangeNotifierProvider(create: (context) => MenuItemProvider()),
    //     ],
    //     builder: (context, _) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}
