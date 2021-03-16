import 'package:flutter/material.dart';
import 'package:patterns/model/counter.dart';
import 'package:patterns/view/counter_view.dart';

abstract class CounterPresenterProtocol {
  final CounterView view;

  CounterPresenterProtocol(this.view);

  void increase();
  void decrease();

}

class CounterPresenter extends CounterPresenterProtocol {
  final _counter = Counter();

  CounterPresenter(CounterView view) : super(view) {
    view.refreshTextColor(Colors.redAccent);
  }


  @override
  void decrease() {
    _counter.decrement();
    this.view.refreshCounter(_counter.value);

    if (_counter.isAtTheLowerBound) {
      view.refreshTextColor(Colors.redAccent);
    }

  }

  @override
  void increase() {
    _counter.increment();
    this.view.refreshCounter(_counter.value);

    if (_counter.isAtTheUpperBound) {
      view.refreshTextColor(Colors.blueAccent);
    }
  }

}