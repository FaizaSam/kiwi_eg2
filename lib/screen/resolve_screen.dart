import 'package:flutter/material.dart';
import '/di/test01.dart';
import 'package:kiwi/kiwi.dart';

class ResolveScreen extends StatefulWidget {
  @override
  _ResolveScreenState createState() => new _ResolveScreenState();
}

class _ResolveScreenState extends State<ResolveScreen> {
  @override
  void initState() {
    super.initState();
    // Di.setup();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resolve Screen'),
      ),
      body: Center(
        child: ListView(
          children: [
            Container(height: 16),
            const Text(
              'Counter instances:',
              textAlign: TextAlign.center,
            ),
            Text(
              KiwiContainer().resolve<Counter>('display').value.toString(),
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
            Text(
              KiwiContainer().resolve<Counter>().value.toString(),
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
            Text(
              KiwiContainer().resolve<Test>().toString(),
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  void _incrementCounter() {
    setState(() => KiwiContainer().resolve<Counter>('display').add());
  }
}
