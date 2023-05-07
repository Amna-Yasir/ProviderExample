import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:state_managment/provider/font_provider.dart';

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    final fonntProvider = Provider.of<fontprovider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Column(children: [
        Text(
          'font size: ' + fonntProvider.val.toString(),
          style: TextStyle(fontSize: 20),
        ),
        Consumer<fontprovider>(
          builder: (context, value, child) {
            return Slider(
                min: 5,
                max: 30,
                value: fonntProvider.val.toDouble(),
                onChanged: ((double newValue) {
                  value.setValue(newValue.toInt());
                }));
          },
        )
      ]),
    );
  }
}
