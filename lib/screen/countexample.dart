import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:state_managment/provider/count_provider.dart';

class countExample extends StatefulWidget {
  const countExample({super.key});

  @override
  State<countExample> createState() => _countExampleState();
}

class _countExampleState extends State<countExample> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final countprovider = Provider.of<countProvider>(context, listen: false);
    Timer.periodic(Duration(seconds: 2), (timer) {
      countprovider.setcount();
    });
  }

  Widget build(BuildContext context) {
    final countprovider = Provider.of<countProvider>(context, listen: false);
    print(' this widget will build once');
    return Scaffold(
      appBar: AppBar(
        title: Text('Count Example'),
      ),
      body: Center(child: Consumer<countProvider>(
        builder: (context, value, child) {
          print(' this widget will build multiple times');
          return Text(
            value.count.toString(),
            style: TextStyle(fontSize: 50),
          );
        },
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          countprovider.setcount();
        },
      ),
    );
  }
}
