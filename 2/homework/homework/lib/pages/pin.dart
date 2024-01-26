import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pin extends StatefulWidget {
  const Pin({super.key});

  @override
  State<Pin> createState() => _PinState();
}

class _PinState extends State<Pin> {
  // state variables
  var _text = "";
  var _pin = "______";
  var _currentpin = '';
  Widget buildItem({
    required int number,
    required String label,
    Color color = Colors.black,
  }) {
    if (number >= 0) {
      return InkWell(
        onTap: () {
          setState(() {
            //_text = Random().nextInt(100).toString();
            if (_currentpin.length < 6) {
              _currentpin += number.toString();
              _pin = '';
              _pin += _currentpin;
              for (int i = 0; i < 6 - _currentpin.length; i++) {
                _pin += '_';
              }
            }
          });
        },
        child: Container(
          // margin: EdgeInsets.all(5),
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),

          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
          width: 70,

          child: Column(
            children: [
              // Icon(icon, color: color),
              Text(
                number.toString(),
                style: GoogleFonts.notoSansThai(
                  fontWeight: FontWeight.bold,
                  color: color,
                  fontSize: 20.0,
                ),
              ),
              Text(
                label,
                style: GoogleFonts.notoSansThai(
                  color: color,
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
        ),
      );
    } else if (label == 'delete') {
      return InkWell(
        onTap: () {
          setState(() {
            _currentpin = _currentpin.substring(0, _currentpin.length - 1);
            _pin = _currentpin;
            for (int i = 0; i < 6 - _currentpin.length; i++) {
              _pin += '_';
            }
          });
        },
        child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
            width: 70,
            height: 75,
            child: Icon(Icons.backspace)),
      );
    } else {
      return InkWell(
        onTap: () {
          setState(() {
            _currentpin = '';
            _pin = '______';
          });
        },
        child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
            width: 70,
            height: 75,
            child: Icon(Icons.clear)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var numbers = [
      'one',
      'two',
      'three',
      'four',
      'five',
      'six',
      'seven',
      'eight',
      'nine',
      'zero'
    ];
    List<Widget> itemList = [];
    List<Widget> itemList2 = [];
    List<Widget> itemList3 = [];
    List<Widget> itemList4 = [];
    for (int i = 0; i < 3; i++) {
      itemList.add(buildItem(label: numbers[i], number: i + 1));
      itemList.add(SizedBox(width: 15));
      itemList2.add(buildItem(label: numbers[i + 3], number: i + 4));
      itemList2.add(SizedBox(width: 15));
      itemList3.add(buildItem(label: numbers[i + 6], number: i + 7));
      itemList3.add(SizedBox(width: 15));
    }

    itemList4.add(buildItem(number: -1, label: 'clear'));
    itemList4.add(SizedBox(width: 15));
    itemList4.add(buildItem(number: 0, label: 'zero'));
    itemList4.add(SizedBox(width: 15));
    itemList4.add(buildItem(number: -1, label: 'delete'));

    return Scaffold(
      body: Container(
        // padding: EdgeInsets.only(top: 40.0, bottom: 40),
        child: Column(
          // height
          // mainAxisSize: MainAxisSize.min,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // decoration: BoxDecoration(color: Colors.grey),
              child: Icon(Icons.security, size: 60.0),
            ),
            Container(
              // decoration: BoxDecoration(color: Colors.grey),
              child: Text(
                'PIN LOGIN',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Expanded(child: Container()),
            Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    // height: 10,
                    // decoration: BoxDecoration(color: Colors.red),
                    // margin: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      _pin,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(child: Container()),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: itemList,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: itemList2,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              // margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: itemList3,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: itemList4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
