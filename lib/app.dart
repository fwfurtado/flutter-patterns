import 'package:flutter/material.dart';
import 'package:patterns/pages/my_home_page.dart';
import 'package:patterns/pages/notifier_provider.dart';
import 'package:patterns/view_model/counter_view_model.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CounterNotifierProvider(
          notifier: CounterViewModel(),
          child: MyHomePage(title: 'Flutter Demo Home Page')
      )
    );
  }
}