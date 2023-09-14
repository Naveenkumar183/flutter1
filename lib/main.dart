import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int letDice=1;
  int leDice=1;
  Random random = new Random();
   generateRandom(){
    return random.nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(

        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
                onTap:(){
                  setState(() {
                    letDice=generateRandom();
                  });

                },
                child: Image.asset("images/dic$letDice.png")),
          ),
          ),
          Expanded(

            child:Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                  onTap:(){
                    setState(() {
                      leDice=generateRandom();
                    });
                  },
                  child: Image.asset("images/dic$leDice.png")),
            ),
          ),
        ],
      ),
    );
  }
}


