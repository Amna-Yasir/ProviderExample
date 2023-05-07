// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managment/drawer_example/drawerfile.dart';
import 'package:state_managment/home_screnn.dart';
import 'package:state_managment/provider/count_provider.dart';
import 'package:state_managment/provider/exampleone_provider.dart';
import 'package:state_managment/provider/favourite_provider.dart';
import 'package:state_managment/provider/font_provider.dart';
import 'package:state_managment/provider/theme_provider.dart';
import 'package:state_managment/screen/countexample.dart';
import 'package:state_managment/screen/example_one.dart';
import 'package:state_managment/screen/favourite/dark_theme.dart';
import 'package:state_managment/screen/favourite/favouritescreen.dart';
import 'package:state_managment/screen/favourite/value_notify_listner.dart';
import 'package:state_managment/why_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => countProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ExampleOneProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => favoriteitemprovider(),
        ),
        ChangeNotifierProvider(
          create: (_) => themeprovider(),
        ),
        ChangeNotifierProvider(
          create: (_) => fontprovider(),
        )
      ],
      child: Builder(builder: (BuildContext context) {
        final changetheme = Provider.of<themeprovider>(context);
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.red,
          ),
          themeMode: changetheme.thememode,
          darkTheme: ThemeData(
              brightness: Brightness.dark,
              appBarTheme: AppBarTheme(color: Colors.teal)),
          home: drawerScreen(),
        );
      }),
    );
  }
}
