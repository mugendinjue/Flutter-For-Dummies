import "package:flutter/material.dart";

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("You clicked the button this many times: "),
            Text(
              _counter.toString(),
              style: const TextStyle(fontSize: 40),
            ),
            ElevatedButton(
                onPressed: _incrementCounter,
                child: const Text(
                  "Increment",
                  style: TextStyle(color: Colors.green),
                )),
            ElevatedButton(
                onPressed: _decrementCounter, child: const Text("Decrement", style: TextStyle(color: Colors.red)))
          ],
        ),
      ),
    );
  }
}
