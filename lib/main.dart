import 'package:flutter/material.dart';
import 'package:gopuapp/custom3.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomWidget(Colors.deepPurple,Colors.indigo,'My name is shubham'),
      ),
    ),
  );
}

