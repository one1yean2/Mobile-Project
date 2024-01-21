import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  List<Map<String, dynamic>> data = [
    {
      'title': 'Favorite',
      'icon': Icons.favorite,
    },
    {
      'title': 'Home',
      'icon': Icons.home,
    },
    {
      'title': 'Person',
      'icon': Icons.person,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
  ];

  // ภาษา Dart จะทำการ infer type ให้เรา (type inference)
  var numbers = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    // var title = data[0]['title'];
    // var icon = data[0]['icon'];

    var firstItem = data[0];
    var title = firstItem['title'];
    var value = firstItem['value'];

    // Random r = Random();
    // var index = r.nextInt(data.length);
    // var title = data[index]['title'];
    // var icon = data[index]['icon'];

    return Scaffold(
      body: Container(
        color: Colors.pink,
        child: Center(
          child: ListView.builder(
            // Named constructor
            itemCount: data.length,
            itemBuilder: buildItem,
          ),
          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Icon(icon, size: 50, color: Colors.white),
          //     SizedBox(height: 10.0,),
          //     Text(title, style: TextStyle(color: Colors.white)),
          //   ],
          // ),
        ),
      ),
    );
  }

  Widget? buildItem(BuildContext context, int index) {
    var title = data[index]['title'];
    var icon = data[index]['icon'];
    return Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.yellow,
        border: Border.all(width: 4.0, color: Colors.white),
        borderRadius: BorderRadius.circular(4.0),
        // boxShadow: [
        //   BoxShadow(
        //     offset: Offset(0, 0),
        //     color: Colors.grey,
        //     spreadRadius: 4.0,
        //     blurRadius: 4.0,
        //   ),
        // ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(left: 32.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 2.0, color: Colors.red),
              //borderRadius: BorderRadius.circular(64.0),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Colors.blue),
          ),
          Text(title),
          Text(title),
          Text('Hello Flutter'),
        ],
      ),
    );
  }
}
