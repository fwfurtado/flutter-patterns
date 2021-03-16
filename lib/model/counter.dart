class Counter {
  int _value = 0;

  get value => _value;

  increment() => ++_value;
  decrement() => --_value;
}