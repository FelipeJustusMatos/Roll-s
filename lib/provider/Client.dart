import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rolls/data/dummy_cliente.dart';

class Cliente with ChangeNotifier{
  //final Map<String, Cliente> _items = {...DUMMY_CLIENTE};//need_help

  List<Cliente> get all {
    //return [..._items.values];
  }

  int get count {
    //return _items.length;
  }
}