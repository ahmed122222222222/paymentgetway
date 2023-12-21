import 'package:flutter/material.dart';
import 'package:payment/core/utiles/styels.dart';

class Info extends StatelessWidget {
  const Info({super.key, required this.str1, required this.str2});
  final String str1,str2;
   @override
  Widget build(BuildContext context) {
    return  Row(
children: [
  Text(str1,style:styles.font18 ,),
  const Spacer(),
  Text(str2,style:styles.font18 ,),
],
    );
  }
}
class Total extends StatelessWidget {
  const Total({super.key, required this.str1, required this.str2});
  final String str1,str2;
   @override
  Widget build(BuildContext context) {
    return  Row(
children: [
  Text(str1,style:styles.font24 ,),
  const Spacer(),
  Text(str2,style:styles.font24 ,),
],
    );
  }
}
