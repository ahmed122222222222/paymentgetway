import 'package:flutter/material.dart';
import 'package:payment/core/utiles/styels.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});
  @override
  Widget build(BuildContext context) {
   return Scaffold( 
    appBar: AppBar(title: const Text("Payment Details",style: styles.font25,),
    centerTitle: true,
    leading: const Icon(Icons.arrow_back),
    ),
    body: const PaymentBody(),
   );
  }
}

class PaymentBody extends StatelessWidget {
  const PaymentBody({super.key});
  @override
  Widget build(BuildContext context) {
    return  const Column(
      children: [
        SizedBox(height: 32,),
         Paymentmethod()
      ],
    );
  }
}

class Paymentmethod extends StatefulWidget {
 const Paymentmethod({super.key});

  @override
  State<Paymentmethod> createState() => _PaymentmethodState();
}

class _PaymentmethodState extends State<Paymentmethod> {
final List<String>image=['asset/image/SVGRepo_iconCarrier.png',
'asset/image/Group.png',
"asset/image/payapple.png"
];
int activein=0;
  @override
  Widget build(BuildContext context) {
   return SizedBox(
    height: 62,
     child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: image.length,
      itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal:10.0),
          child: GestureDetector(
            onTap: ()=>setState(() {
              activein=index;
            }),
            child: Way(imag: image[index],isactive: activein==index,)),
        );
      },
     ),
   );
  }
}
class Way extends StatelessWidget {
  const Way({super.key, required this.imag,  this.isactive=false});
  final String imag;
 final bool isactive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
    width: 103,
    height: 62,
    decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
            side:  BorderSide(width: 1.50, color: isactive? const Color(0xFF34A853): Colors.grey),
            borderRadius: BorderRadius.circular(15),
        ),
        shadows: [
            BoxShadow(
                color:isactive? const Color(0xFF34A853):Colors.grey,
                blurRadius: 4,
                offset: Offset(0, 0),
                spreadRadius: 0,
            )
            
        ],
        
    ),
    child: Container(
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
       color: Colors.white,
     ),
      child: Image.asset(imag),
    ),
); }
}
