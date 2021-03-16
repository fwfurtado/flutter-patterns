import 'package:flutter/material.dart';
import 'package:patterns/pages/notifier_provider.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title});

  @override
  Widget build(BuildContext context) {
    final viewModel = CounterNotifierProvider.of(context);
    final counter = viewModel.value;
    final textStyle = Theme.of(context).textTheme.headline4.apply(color: viewModel.textColor);

    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            GestureDetector(
              onTap: viewModel.decrease,
              child: Text(
                '$counter',
                style: textStyle,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: viewModel.increase,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
