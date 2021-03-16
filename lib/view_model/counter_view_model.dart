import 'package:flutter/material.dart';
import 'package:patterns/model/counter.dart';

class CounterViewModel extends ChangeNotifier {
  final _counter = Counter();
  Color _textColor = Colors.redAccent;

  get value => _counter.value;
  get textColor => _textColor;

  increase() {
    _counter.increment();

    if (_counter.isAtTheUpperBound) {
      _textColor = Colors.blueAccent;
    } else {
      _textColor = Colors.grey;
    }

    notifyListeners();
  }

  decrease() {
    _counter.decrement();

    if (_counter.isAtTheLowerBound) {
      _textColor = Colors.redAccent;
    } else {
      _textColor = Colors.grey;
    }

    notifyListeners();
  }
}