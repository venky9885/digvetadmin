import 'package:flutter/material.dart';

import 'data.dart';
//import 'model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Admin',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HogeApp(),
    );
  }
}
/*
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, @required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // CollectionReference users =
  //     FirebaseFirestore.instance.collection('postsfair');
  // Future<Stream<List<CattleFair>>> getData() async {
  //   var dt = users
  //       .orderBy('date', descending: true)
  //       .where('show', isEqualTo: false)
  //       .snapshots();
  //   return dt
  //       .map((et) => et.docs.map((e) => CattleFair.fromMap(e.data())).toList());
  // }

  @override
  Widget build(BuildContext context) {
    // CollectionReference users =
    //     FirebaseFirestore.instance.collection('postsfair');
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: HogeApp(),
    );
  }
}
*/