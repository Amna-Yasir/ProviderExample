import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class notifylistner extends StatelessWidget {
  const notifylistner({super.key});

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> count = ValueNotifier<int>(0);
    ValueNotifier<bool> toogle = ValueNotifier<bool>(false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless widget'),
      ),
      body: Column(
        children: [
          ValueListenableBuilder(
              valueListenable: toogle,
              builder: ((context, value, child) {
                return TextFormField(
                  obscureText: toogle.value,
                  decoration: InputDecoration(
                      suffix: InkWell(
                        onTap: () {
                          toogle.value = !toogle.value;
                        },
                        child: Icon(toogle.value
                            ? Icons.visibility_off_outlined
                            : Icons.visibility),
                      ),
                      hintText: 'Password'),
                );
              })),
          Center(
            child: ValueListenableBuilder(
              valueListenable: count,
              builder: (context, value, child) {
                return Text(
                  count.value.toString(),
                  style: TextStyle(fontSize: 50),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count.value++;
          print(count.value.toString());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
