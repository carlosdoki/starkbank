// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MontlyAndDailyWidget extends StatelessWidget {
  const MontlyAndDailyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 100),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 25,
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF0070E0)),
                color: Color(0xFF0070E0)),
            child: Center(
              child: Text(
                'Diário',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            width: 80,
            height: 25,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF0070E0)),
            ),
            child: Center(
              child: Text(
                'Mensal',
                style: TextStyle(color: Color(0xFF0070E0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
