import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:provider/provider.dart';

import '../provider/font_provider.dart';

class homeDrawer extends StatefulWidget {
  const homeDrawer({super.key});

  @override
  State<homeDrawer> createState() => _homeDrawerState();
}

class _homeDrawerState extends State<homeDrawer> {
  final String loreumhome = lorem(paragraphs: 3, words: 200);

  @override
  Widget build(BuildContext context) {
    final fonntProvider = Provider.of<fontprovider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Expanded(
            child: ListView(
              children: [
                Text(
                  loreumhome,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: fonntProvider.val.toDouble()),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
