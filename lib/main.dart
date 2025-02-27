import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TapCounterScreen(),
    );
  }
}

class TapCounterScreen extends StatefulWidget {
  @override
  _TapCounterScreenState createState() => _TapCounterScreenState();
}

class _TapCounterScreenState extends State<TapCounterScreen> {
  int _tapCount = 0;

  void _incrementTap() {
    setState(() {
      _tapCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hitung Tap')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Jumlah Tap:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '$_tapCount',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _incrementTap,
              child: const Text('Tap Saya!'),
            ),
          ],
        ),
      ),
    );
  }
}
