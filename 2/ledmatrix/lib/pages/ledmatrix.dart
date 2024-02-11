import 'package:flutter/material.dart';

class LedMatrix extends StatefulWidget {
  const LedMatrix({super.key});

  @override
  State<LedMatrix> createState() => _LedMatrixState();
}

class _LedMatrixState extends State<LedMatrix> {
// 0 = จุดมืด (LED off), 1 = จุดสว่าง (LED on)
  var dotsData = [
    // Digit 0
    [
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
    ],
    // Digit 1
    [
      [0, 0, 1, 0, 0],
      [0, 1, 1, 0, 0],
      [0, 0, 1, 0, 0],
      [0, 0, 1, 0, 0],
      [0, 0, 1, 0, 0],
      [0, 0, 1, 0, 0],
      [0, 1, 1, 1, 0],
    ],
    // Digit 2
    [
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [0, 0, 0, 0, 1],
      [0, 0, 0, 1, 0],
      [0, 0, 1, 0, 0],
      [0, 1, 0, 0, 0],
      [1, 1, 1, 1, 1],
    ],
    // Digit 3
    [
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [0, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
      [0, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
    ],
    // Digit 4
    [
      [0, 0, 0, 1, 0],
      [0, 0, 1, 1, 0],
      [0, 1, 0, 1, 0],
      [1, 0, 0, 1, 0],
      [1, 1, 1, 1, 1],
      [0, 0, 0, 1, 0],
      [0, 0, 0, 1, 0],
    ],
    // Digit 5
    [
      [1, 1, 1, 1, 1],
      [1, 0, 0, 0, 0],
      [1, 1, 1, 1, 0],
      [0, 0, 0, 0, 1],
      [0, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
    ],
    // Digit 6
    [
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 0],
      [1, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
    ],
    // Digit 7
    [
      [1, 1, 1, 1, 1],
      [0, 0, 0, 0, 1],
      [0, 0, 0, 1, 0],
      [0, 0, 1, 0, 0],
      [0, 1, 0, 0, 0],
      [0, 1, 0, 0, 0],
      [0, 1, 0, 0, 0],
    ],
    // Digit 8
    [
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
    ],
    // Digit 9
    [
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 1],
      [0, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
    ]
  ];

// flutter call _buildDot method when want to use the digit each dot have different color depend on the number in the array above

  Widget _buildDot(int number, int j, int l) {
    var x = dotsData[number];
    if (x[j][l] == 1) {
      return Container(
        width: 20,
        height: 20,
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromARGB(255, 196, 236, 21),
        ),
      );
    } else {
      return Container(
        width: 20,
        height: 20,
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromARGB(255, 62, 62, 62),
        ),
      );
    }
  }

  List<Widget> _buildRow(int number, int r) {
    return [
      _buildDot(number, r, 0),
      _buildDot(number, r, 1),
      _buildDot(number, r, 2),
      _buildDot(number, r, 3),
      _buildDot(number, r, 4),
    ];
  }

  Widget _buildDigit(int number) {
    return Column(
      children: [
        Row(
          children: _buildRow(number, 0),
        ),
        Row(
          children: _buildRow(number, 1),
        ),
        Row(
          children: _buildRow(number, 2),
        ),
        Row(
          children: _buildRow(number, 3),
        ),
        Row(
          children: _buildRow(number, 4),
        ),
        Row(
          children: _buildRow(number, 5),
        ),
        Row(
          children: _buildRow(number, 6),
        ),
      ],
    );
  }

  var _number = [0, 0];

  Widget _increase() {
    return Container(
        decoration: BoxDecoration(shape: BoxShape.circle),
        child: Material(
          color: Colors.white,
          shape: CircleBorder(),
          child: InkWell(
            customBorder: CircleBorder(),
            onTap: () {
              setState(() {
                _number[1]++;
                if (_number[1] > 9) {
                  _number[1] = 0;
                  _number[0]++;
                  if (_number[0] > 9) {
                    _number[0] = 0;
                  }
                }
              });
            },
            child: Ink(
              decoration: BoxDecoration(shape: BoxShape.circle),
              height: 100,
              width: 100,
              child: Icon(
                Icons.arrow_drop_up_sharp,
                size: 75,
              ),
            ),
          ),
        ));
  }

  Widget _decrease() {
    return Container(
        decoration: BoxDecoration(shape: BoxShape.circle),
        child: Material(
          color: Colors.white,
          shape: CircleBorder(),
          child: InkWell(
            customBorder: CircleBorder(),
            onTap: () {
              setState(() {
                _number[1]--;
                if (_number[1] < 0) {
                  _number[1] = 9;
                  _number[0]--;
                  if (_number[0] < 0) {
                    _number[0] = 9;
                  }
                }
              });
            },
            child: Ink(
              decoration: BoxDecoration(shape: BoxShape.circle),
              height: 100,
              width: 100,
              child: Icon(
                Icons.arrow_drop_down_sharp,
                size: 75,
              ),
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CP-SU LED MATRIX'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.red[200],
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Expanded(child: Container()),
            _increase(),
            Expanded(child: Container()),
            Row(
              children: [
                Expanded(child: Container()),
                Container(
                  padding: const EdgeInsets.all(50.0),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 50.0,
                        spreadRadius: 1.0,
                      ),
                    ],
                    border: Border.all(color: Colors.white, width: 10.0),
                    color: Colors.black,
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildDigit(_number[0]),
                      SizedBox(
                        width: 50,
                      ),
                      _buildDigit(_number[1])
                    ],
                  ),
                ),
                Expanded(child: Container()),
              ],
            ),
            Expanded(child: Container()),
            _decrease(),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}
