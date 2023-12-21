
import 'package:flutter/material.dart';
import 'package:payment/features/mycheck/view/widget/buttom.dart';
import 'package:payment/features/mycheck/view/widget/info.dart';

class Bodycheckout extends StatelessWidget {
  const Bodycheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
          
        const SizedBox(height: 25,),
        Stack(
          children: [
          Expanded(child: Image.asset("asset/image/Group 6.png"))
          ],
        ),const SizedBox(height: 25,)
        ,const Info(str1: "Order Subtotal", str2: "48\$"),
        const SizedBox(height: 3,),
        const Info(str1: "Discount", str2: "10\$"),
        const SizedBox(height: 3,),
        const Info(str1: "Shipping", str2: "8\$"),
        const SizedBox(height: 17,),
        const Divider(
          thickness:3 ,
          color: Color(0xFFC6C6C6),
        ),
        const SizedBox(height: 15,),
        const Total(str1: "Total", str2: "25\$"),
     const SizedBox(height: 16,),
        const Buttom(),
        const SizedBox(height: 12,)
      ],
    );
  }

}