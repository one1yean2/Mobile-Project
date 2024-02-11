import 'package:flutter/material.dart';

class LedMatrix extends StatefulWidget {
  const LedMatrix({super.key});

  @override
  State<LedMatrix> createState() => _LedMatrixState();
}

class _LedMatrixState extends State<LedMatrix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('LED Matrix')),
        body: Center(
          child: Column(
            children: [
              Container(
                height: 300,
                width: 300,
                color: Colors.red,
              ),
            ],
          ),
        ));
  }
}
