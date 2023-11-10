// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:prov1/model.dart/producrt.dart';
import 'package:prov1/provi.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Item> items = [
    Item(price: 200, title: "oppo", img: "images/oppo.jpeg"),
    Item(price: 300, title: "nokia", img: "images/nokia-removebg-preview.png"),
    Item(
        price: 400, title: "realme", img: "images/realme-removebg-preview.png"),
    Item(price: 500, title: "vivo", img: "images/vivo-removebg-preview.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text("Todo"),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const product();
                    }));
                  },
                  icon: const Icon(Icons.add_shopping_cart)),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                // ignore: avoid_types_as_parameter_names
                child: Consumer<provi>(builder: (context, provi, child) {
                  return Text("${provi.count}");
                }),
              )
            ],
          )
        ],
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.5,
            crossAxisSpacing: 10,
            mainAxisSpacing: 100,
          ),
          itemCount: items.length,
          itemBuilder: (context, i) {
            return Consumer<provi>(builder: (context, provi, child) {
              return Card(
                  child: Column(
                children: [
                  Image.asset(items[i].img),
                  ListTile(
                    title: Text(
                      items[i].title,
                    ),
                    subtitle: Row(
                      children: [
                        Text(r"$" "${items[i].price}"),
                       
                       
                        IconButton(
                            onPressed: () {
                              provi.add(items[i]);
                            },
                            icon: const Icon(Icons.favorite))
                      ],
                    ),
                  ),
                ],
              ));
            });
          }),
    );
  }
}

class Item {
  int price;
  String title;
  String img;
  Item({
    required this.price,
    required this.title,
    required this.img,
  });
}
