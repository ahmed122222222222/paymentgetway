import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:payment/core/utiles/styels.dart';
import 'package:payment/features/mycheck/view/widget/body.dart';

// ignore: camel_case_types
class check extends StatelessWidget {
  const check({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: Image.asset("asset/image/Arrow 1.png"),
        centerTitle: true,
        title: const Text("My Cart",style: styles.font25,),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal:20.0),
        child: Bodycheckout(),
      ),
    );
  }

}




