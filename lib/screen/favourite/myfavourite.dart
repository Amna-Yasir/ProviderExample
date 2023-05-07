import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:state_managment/provider/favourite_provider.dart';
import 'package:state_managment/screen/favourite/favouritescreen.dart';

class myfavourite extends StatefulWidget {
  const myfavourite({super.key});

  @override
  State<myfavourite> createState() => _myfavouriteState();
}

class _myfavouriteState extends State<myfavourite> {
  List<int> selecteditem = [];

  @override
  Widget build(BuildContext context) {
    final favouriteprovider = Provider.of<favoriteitemprovider>(context);
    print('build');
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          titleSpacing: 1,
          centerTitle: true,
          title: Text('My Faxourites'),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: favouriteprovider.selecteditem.length,
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
