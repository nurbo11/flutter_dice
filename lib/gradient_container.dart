import 'package:flut_orell/dice_roller.dart';
import 'package:flutter/material.dart';

const alignStart = Alignment.topLeft;
const alignEnd = Alignment.bottomRight;
class GradientCont extends StatelessWidget{
   const GradientCont(this.color1, this.color2, {super.key});

  const GradientCont.purple({super.key})
  : color1 = Colors.deepPurple, 
    color2 = Colors.indigo;

  final Color color1;
  final Color color2;
  @override
  Widget build(context){
    return Container(
            decoration:  BoxDecoration(
              border: Border.all(),
              gradient:   LinearGradient(
                colors: [ color1, color2 
                ],
                begin: alignStart,
                end: alignEnd,
              ),
            ),
            child:  const Center(
              child: DiceRoller(),
            ),
          );
  }
}