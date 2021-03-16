import 'dart:ui';

abstract class CounterView {
  refreshCounter(int currentCounter);
  refreshTextColor(Color color);
}