class Counter {
  int _value = 0;
  int _lowerBound;
  int _upperBound;

  Counter({int low = 0, int high=25}) {
    this._lowerBound = low;
    this._upperBound = high;
  }

  get value => _value;
  get upperBound => _upperBound;
  get lowerBound => _lowerBound;

  increment() {
    if (_value < _upperBound) {
      _value++;
    }
  }

  decrement() {
    if (_value > _lowerBound) {
      _value--;
    }
  }
}