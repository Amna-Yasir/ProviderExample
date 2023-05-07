import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:state_managment/provider/favourite_provider.dart';
import 'package:state_managment/screen/favourite/myfavourite.dart';

class favouriteScreen extends StatefulWidget {
  const favouriteScreen({super.key});

  @override
  State<favouriteScreen> createState() => _favouriteScreenState();
}

class _favouriteScreenState extends State<favouriteScreen> {
  List<int> selecteditem = [];

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 1,
          centerTitle: true,
          title: Text('Fav App'),
          actions: [
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => myfavourite())));
                },
                child: Icon(Icons.favorite)),
            SizedBox(
              width: 20,
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: ((context, index) {
                    return Consumer<favoriteitemprovider>(
                        builder: ((context, value, child) {
                      return ListTile(
                        onTap: () {
                          if (value.selecteditem.contains(index)) {
                            value.removeitem(index);
                          } else {
                            value.additem(index);
                          }
                        },
                        title: Text('Item' + index.toString()),
                        trailing: Icon(value.selecteditem.contains(index)
                            ? Icons.favorite
                            : Icons.favorite_border),
                      );
                    }));
                  })),
            ),
          ],
        ));
  }
}
