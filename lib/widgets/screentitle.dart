import 'package:flutter/material.dart';

class Screentitle extends StatelessWidget {
  final String text;
  Screentitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: Colors.grey[600],
      ),
    );
  }
}
