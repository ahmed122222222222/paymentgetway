import 'package:flutter/material.dart';
import 'package:payment/core/utiles/styels.dart';
import 'package:payment/features/paypage/presention/view/home.dart';

class Buttom extends StatelessWidget {
  const Buttom({super.key});
  @override
  Widget build(BuildContext context) {
 return   Container(
  width: 350,
  height: 73,
  decoration: BoxDecoration(
    color: Color(0xFF34A853),
    borderRadius: BorderRadius.circular(15),
  ),
  child: TextButton(
    onPressed: () {
      // Add your onPressed logic here
      Navigator.push(context, MaterialPageRoute(builder: (builder)=>Payment()));
    },
    style: TextButton.styleFrom(
     primary: Colors.black87,
      textStyle: styles.font22
    ),
    child: Text('Complete Payment'),
  ),
);
  }
}
