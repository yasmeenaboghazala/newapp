import 'package:flutter/material.dart';
import 'package:prov1/provi.dart';
import 'package:provider/provider.dart';

class product extends StatelessWidget {
  const product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text("check"),
        ),
        body: Consumer<provi>(builder: (context, provi, child) {
          return ListView.builder(
            itemCount: provi.basket.length,
            itemBuilder: (context, i) {
            return Card(
                child: ListTile(
              title: Text(provi.basket[i].title),
              trailing: IconButton(
                  onPressed: () {
                    provi.remove(provi.basket[i]);
                  },
                  icon: Icon(Icons.remove)),
            ));
          });
        }));
  }
}
