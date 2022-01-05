import 'package:flutter/cupertino.dart';
import 'package:rolls/data/dummy_rolls.dart';
import 'package:rolls/modelo/rolls.dart';

class RollsProvider with ChangeNotifier {
  final Map<String, Rolls> _items = {...DUMMY_ROLLS};

  List<Rolls> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }
    get id => null;

  get email => null;

  Rolls byIndex(int i) {
    return _items.values.elementAt(i);
  }
  }