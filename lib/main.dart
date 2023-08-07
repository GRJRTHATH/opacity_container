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
      title: 'Yuri Grj',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Yuri & Moon Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var myOpacity = 1.0;
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Yuri&Moon"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                opacity: myOpacity,
                duration: Duration(seconds: 1),curve: Curves.elasticOut,
                child: Container(
                  width: 200,
                  height: 100,
                  color: Colors.deepPurple,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (isVisible) {
                        myOpacity = 0.0;
                        isVisible= false;  //invisible
                      } else {
                        myOpacity = 1.0;
                        isVisible = true; //visible
                      }
                    });
                  },
                  child: Text('Close'))
            ],
          ),
        ));
  }
}
