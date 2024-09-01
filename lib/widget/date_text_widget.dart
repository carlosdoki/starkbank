// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DateTextWidget extends StatelessWidget {
  const DateTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Color(0xFF0070E0))),
        child: TextButton(
          onPressed: () {},
          child: Text(
            'Diário: 16/08/2024 - 15/09/2024',
            style: TextStyle(color: Color(0xFF0070E0)),
          ),
        ),
      ),
    );
  }
}
