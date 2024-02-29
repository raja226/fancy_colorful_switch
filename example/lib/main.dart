import 'package:fancy_colorful_switch/fancy_colorful_switch.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Example App"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: FancyColorfulSwitch(
          activeColor: Colors.green,
          inactiveThumbColor: Colors.red,
          activeTrackColor: Colors.pink,
          inactiveTrackColor: Colors.grey[300]!,
          onStateChanged: (value) {
            print('Switch state changed: $value');
          },
        ),
      ),
    );
  }
}
