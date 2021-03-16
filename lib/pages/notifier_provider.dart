import 'package:flutter/material.dart';
import 'package:patterns/view_model/counter_view_model.dart';

class CounterNotifierProvider extends InheritedNotifier {
    CounterNotifierProvider({CounterViewModel notifier, Widget child, Key key}): super(key: key, notifier: notifier, child: child);

    static CounterViewModel of(BuildContext context) {
        return context.dependOnInheritedWidgetOfExactType<CounterNotifierProvider>().notifier;
    }
}