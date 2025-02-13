import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const DiceRollMain());
}

// MaterialApp Widget
class DiceRollMain extends StatelessWidget {
  const DiceRollMain({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DiceRoll(),
    );
  }
}
// End MaterialApp

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
  int firstDiceNumber = 1;
  int secondDiceNumber = 1;
  int diceSum = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("Dice Roll", style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: (){
                setState(() {
                  firstDiceNumber = Random().nextInt(6) + 1;
                  diceSum = firstDiceNumber + secondDiceNumber;
                });
              }, 
              child: Image.asset("images/dice-$firstDiceNumber.png", scale: 2,)
            ),
            TextButton(
              onPressed: (){
                setState(() {
                  secondDiceNumber = Random().nextInt(6) + 1;
                  diceSum = firstDiceNumber + secondDiceNumber;
               });
              }, 
              child: Image.asset("images/dice-$secondDiceNumber.png", scale: 2,)
            ),
            Text("$diceSum", style: TextStyle(fontSize: 32, color: Colors.white),)
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}