import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:provider/provider.dart';

import '../provider/font_provider.dart';

class about extends StatefulWidget {
  const about({super.key});

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  final String loreumText = lorem(paragraphs: 3, words: 200);
  @override
  Widget build(BuildContext context) {
    final fonntProvider = Provider.of<fontprovider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Expanded(
            child: ListView(children: [
              Text(
                loreumText,
                style: TextStyle(fontSize: fonntProvider.val.toDouble()),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
