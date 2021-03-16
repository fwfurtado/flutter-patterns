import 'package:flutter/material.dart';
import 'package:patterns/presenter/counter_presenter.dart';
import 'package:patterns/view/counter_view.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> implements CounterView {
  int _counter = 0;
  Color _counterColor = Colors.grey;
  CounterPresenter _presenter;

  @override
  void initState() {
    _presenter = CounterPresenter(this);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    var textStyle = Theme.of(context).textTheme.headline4.apply(color: _counterColor);

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
              onTap: _presenter.decrease,
              child: Text(
                '$_counter',
                style: textStyle,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _presenter.increase,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  @override
  refreshCounter(int currentCounter) {
    setState(() {
      _counter = currentCounter;
      _counterColor = Colors.grey;
    });
  }

  @override
  refreshTextColor(Color color) {
    setState(() {
      _counterColor = color;
    });
  }
}
