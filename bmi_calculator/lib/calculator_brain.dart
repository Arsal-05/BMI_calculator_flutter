import 'dart:math';

import 'package:flutter/material.dart';
import 'main.dart';

class CalculatorBrain{
  CalculatorBrain({required this.height, required this.weight});
  final int weight;
  final int height;
 late  double _bmi;
   String calculatebmi (){
     _bmi= weight / pow(height/100, 2);
     return _bmi.toStringAsFixed(1);
   }
   
   String getresults(){
     if(_bmi>=25){
       return('overweight');
     }else if(_bmi>18){
       return('Normal');
     }
     else{
       return ('Underweight');
     }

   }

  String getinterpretaion(){
    if(_bmi>25){
      return('Try to exeercise more');
    }else if(_bmi>18){
      return('Normal! Good job');
    }
    else{
      return ('LOw, eat a bit more');
    }

  }

}