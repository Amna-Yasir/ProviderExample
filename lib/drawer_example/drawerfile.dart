// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:state_managment/drawer_example/about.dart';
import 'package:state_managment/drawer_example/home.dart';
import 'package:state_managment/drawer_example/settings.dart';

class drawerScreen extends StatelessWidget {
  const drawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Drawer Example'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://st3.depositphotos.com/5346882/12523/v/600/depositphotos_125231686-stock-illustration-colorful-swirl-rainbow-polygon-background.jpg'),
                        fit: BoxFit.fill)),
                child: Center(
                    child: Text(
                  'Welcome To Provider',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ))),
            listTile(
              listtile: 'Home',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => homeDrawer())));
              },
            ),
            listTile(
              listtile: 'About',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => about())));
              },
            ),
            listTile(
              listtile: 'Settings',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => settings())));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class listTile extends StatelessWidget {
  listTile({required this.listtile, required this.onTap});
  final String listtile;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(listtile),
      onTap: onTap,
    );
  }
}
