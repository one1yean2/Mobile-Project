import 'package:flutter/material.dart';

class Calendar extends StatelessWidget {
  Calendar({super.key});

  List<String> months = [
    'January',
    'Febuary',
    'March',
    'May',
    'April',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  AppBar _buildAppBar() {
    return AppBar(
      title: Text(
        "Calendar 2024",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.blueAccent,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: ListView(
        children: [
          Container(
            child: buildItem(context, 1),
          )
        ],

        // children: [
        //   Container(
        //     padding: EdgeInsets.all(20.0),
        //     margin: EdgeInsets.all(15.0),
        //     child: ListView.builder(
        //       itemCount: 1,
        //       itemBuilder: buildItem,
        //     ),
        //   ),
        // ],
      ),
    );
  }

  Widget buildItem(BuildContext context, int index) {
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
          ),
          Text('Hello Flutter'),
        ],
      ),
    );
  }
}
                //   child: Container(
                //     child: Center(child: Text("January")),
                //     decoration: BoxDecoration(
                //       color: Colors.red,
                //     ),
                //   ),
                // ),

                // Expanded(
                //   child: Container(
                //     child: Center(
                //       child: Text(
                //         "January",
                //       ),
                //     ),
                //     decoration: BoxDecoration(
                //       color: Colors.red,
                //     ),
                //   ),
                // ),