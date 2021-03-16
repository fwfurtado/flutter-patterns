import 'package:patterns/model/counter.dart';

class CounterController {
  Counter _counter = Counter();

  get value => _counter.value;

  increase() => _counter.increment();
  decrease() => _counter.decrement();
}