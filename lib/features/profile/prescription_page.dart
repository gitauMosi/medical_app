import 'package:flutter/material.dart';
import 'package:medical_app/contants/color.dart';
import 'package:medical_app/features/payment/payment_page.dart';

class PrescriptionPage extends StatelessWidget {
  const PrescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Prescription"),
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              
             PrescriptionNots(label: "You have received a prescription from Dr. Nusrat"),
             PrescriptionNots(label: "You have received a prescription from Dr. James"),
             PrescriptionNots(label: "You have received a prescription from Dr. John")
            ],
          ),
        ),
      ),
    );
  }

}
// ignore: must_be_immutable
class PrescriptionNots extends StatelessWidget {
   PrescriptionNots({
    super.key,
    required this.label
  });
  String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(136, 158, 158, 158)
      ),
      child:  Column(
        children: [
          Expanded(child: Text(label, style: const TextStyle(color: Color.fromARGB(255, 80, 80, 80)),)),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 5,),
              GestureDetector(
                onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentPage()));
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Order now", style: TextStyle(color: primaryColor),),
                ),
              ),
              //SizedBox(width: 5,),
             const  Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Download", style: TextStyle(color: primaryColor),),
              ),
            ],
          )
        ],
      ),
    );
  }
}