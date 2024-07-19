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
    return Scaffold(
      body: SafeArea(
        bottom: false, //dene
        child: Column(
          children: [
            //output
            Expanded(
              child: SingleChildScrollView(
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
          ],
        ),
      ),
    );
  }
}
