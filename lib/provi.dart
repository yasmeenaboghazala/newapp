import 'package:flutter/material.dart';
import 'package:prov1/MyHomePage.dart';
// import 'package:prov1/MyHomePage.dart';

class provi extends ChangeNotifier {
//   List<Item> _items = [];
//   double price = 0.0;
//   void add( item) {
//     _items.add(item);
//     price += item.price;
//     notifyListeners();
//   }

//   void remove( item) {
//     _items.remove(item);
//     price -= item.price;
//     notifyListeners();
//   }

//   int get count {
//     return _items.length;
//   }

//   double get totalprice {
//     return price;
//   }

//   List<Item> get baskitem {
//     return _items;
//   }
// }
  final List<Item> catagory = [];

   double price=0.0 ;
  void add(item) {
    catagory.add(item);
    price += item.price;
    notifyListeners();
  }

  void remove(item) {
    catagory.remove(item);
    price -= item.price;
    notifyListeners();
  }

  get count {
    return catagory.length;
  }

  List<Item> get basket {
    return catagory ;
  }
}
