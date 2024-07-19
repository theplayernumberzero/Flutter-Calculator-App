import 'package:calculator_app/button_values.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        bottom: false, //dene
        child: Column(
          children: [
            //output
            Expanded(
              child: SingleChildScrollView(
                reverse: true,  //default deger ustten baslatir
                child: Container(
                  alignment: Alignment.bottomRight,
                    padding: const EdgeInsets.all(16),
                    child: const Text("0" ,
                      style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.end,
                    )
                ),
              ),
            ),
            //buttons
            Wrap(
              children: Btn.buttonValues.map(  //Gelen her değer için yeni bir widget olusturabiliriz
                      (value) => SizedBox(
                          width: screenSize.width/4,
                          height: screenSize.width/5,
                          child: buildButton(value)))
                  .toList(),  //Gelen degerler iterable. children list kabul ettigi icin liste ceviriyoruz
            )
          ],
        ),
      ),
    );
  }

  Widget buildButton(value){
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Material(
        color:  getBtnColor(value),
        clipBehavior: Clip.hardEdge,
        shape: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white24),
            borderRadius: BorderRadius.circular(100)),
        child: InkWell(
          onTap: (){},
          child: Center(
              child: Text(value),
          ),
        ),
      ),
    );
  }

  Color getBtnColor(value){
    return [Btn.del, Btn.clr].contains(value) ? Colors.blueGrey
        : [Btn.per, Btn.multiply, Btn.add, Btn.subtract, Btn.divide, Btn.calculate].contains(value)
        ? Colors.orange : Colors.black87;
  }
}
