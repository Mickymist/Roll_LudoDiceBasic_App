import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gopuapp/dice_roller.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget(this.color1, this.color2, this.name, {super.key});
  final Color color1;
  final Color color2;
  final String name;
  void rollFunction() {
    print('clicked');
  }

  @override
  Widget build(context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color1, color2],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
      child: const Center(
        child: DiceRoll()
      ),
    );
  }
}
