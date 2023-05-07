import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class whyProvider extends StatefulWidget {
  const whyProvider({super.key});

  @override
  State<whyProvider> createState() => _whyProviderState();
}

class _whyProviderState extends State<whyProvider> {
  int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      count++;
      print(count);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider tutorial'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                count.toString(),
                style: TextStyle(fontSize: 50),
              ),
            )
          ]),
    );
  }
}
