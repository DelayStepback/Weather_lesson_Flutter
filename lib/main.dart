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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Colors.deepPurple[300],
        appBar: AppBar(
          title: Text("Labels"),

        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HintLabel('custom label 1'),
              CounterWidget(),
              HintLabel('custom label 2'),
            ],
          ),
        )
      ),
    );
  }
}

class HintLabel extends StatelessWidget {
  final String text;
  const HintLabel(this.text);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(decoration:
    BoxDecoration(color: Colors.deepPurple[200]),
      child: Padding(padding: const EdgeInsets.all(8.0),
          child: Text(text, style: TextStyle(color: Colors.grey[700]),),
        ),

    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _count = 69;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Colors.purple[300],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {
                _decrement();
                },
              icon: Icon(Icons.remove)),
          Text('$_count', style: TextStyle(fontSize: 20),),
          IconButton(
              onPressed: () {
                _increment();
              },
              icon: Icon(Icons.add)),
        ],
      ),
    );
  }

  void _decrement(){
    setState((){
      _count--;
    });
  }
  void _increment(){
    setState(() {
      _count++;
    });
  }
}

