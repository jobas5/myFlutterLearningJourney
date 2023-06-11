import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Stateful App"),
        ),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Text(
            counter.toString(),
            style: TextStyle(fontSize: 20 + double.parse(counter.toString())),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    if (counter != 1) {
                      setState(() {
                        counter--;
                      });
                    }
                    debugPrint(counter.toString());
                  },
                  child: const Icon(Icons.remove)),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                    debugPrint(counter.toString());
                  },
                  child: const Icon(Icons.add))
            ],
          )
        ]),
      ),
    );
  }
}
