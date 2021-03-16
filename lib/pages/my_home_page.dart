import 'package:flutter/material.dart';
import 'package:patterns/controller/counter_controller.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _controller = CounterController();

  @override
  Widget build(BuildContext context) {
    final currentValue = _controller.value;
    var textStyle = Theme.of(context).textTheme.headline4;

    if (_controller.reachedTheLowerBound) {
      textStyle = textStyle.apply(color: Colors.redAccent);
    }

    if (_controller.reachedTheUpperBound) {
      textStyle = textStyle.apply(color: Colors.blueAccent);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            GestureDetector(
              onTap: () {
                setState(_controller.decrease);
              },
              child: Text(
                '$currentValue',
                style: textStyle,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(_controller.increase);
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
