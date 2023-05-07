import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:state_managment/provider/exampleone_provider.dart';

class exampleone extends StatefulWidget {
  const exampleone({super.key});

  @override
  State<exampleone> createState() => _exampleoneState();
}

class _exampleoneState extends State<exampleone> {
  double slidervalue = 1.0;
  @override
  Widget build(BuildContext context) {
    print('widget build once');

    return Scaffold(
      appBar: AppBar(
        title: Text('ExampleOne'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Consumer<ExampleOneProvider>(builder: ((context, value, child) {
              return Slider(
                  max: 1,
                  min: 0,
                  value: value.value,
                  onChanged: ((val) {
                    print(val);
                    value.setvalue(val);
                  }));
            })),
            Consumer<ExampleOneProvider>(builder: ((context, value, child) {
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.green.withOpacity(value.value)),
                      child: Center(child: Text('Container 1')),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.red.withOpacity(value.value)),
                      child: Center(child: Text('Container 2')),
                    ),
                  ),
                ],
              );
            }))
          ]),
    );
  }
}
