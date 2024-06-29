import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiceRoll extends StatefulWidget{
  const DiceRoll({super.key});
  @override
  State <DiceRoll> createState(){
    return _DiceRollState();
  }

}
class _DiceRollState extends State<DiceRoll>{
  var currentDiceSatate = 2;
  void rollDice(){
    setState(() {
      currentDiceSatate = Random().nextInt(6)+1;;
    });
  }
  @override
  Widget build (context){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
        'lib/assets/images/dice-$currentDiceSatate.png',
          width: 200,
        ),
        const SizedBox(height: 20,),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                foregroundColor: Colors.white, textStyle: const TextStyle(fontSize: 28)),
            child: const Text('click me for roll!')),
        const SizedBox(height: 20,),
        Text('You got: $currentDiceSatate',style: TextStyle(color: Colors.yellowAccent,fontSize: 30),)
      ],
    );
  }
}