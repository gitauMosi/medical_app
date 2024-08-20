import 'package:flutter/material.dart';
import 'package:medical_app/contants/color.dart';

class AppoitmentPage extends StatelessWidget {
  const AppoitmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Appoitments", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              AppoitmentsNots(label: "Your appoitment with doctor menson is at 4/5/204 at 01:30 Pm"),
              AppoitmentsNots(label: "Your appoitment with doctor menson is at 4/5/204 at 01:30 Pm"),
              AppoitmentsNots(label: "Your appoitment with doctor menson is at 4/5/204 at 01:30 Pm"),
              AppoitmentsNots(label: "Your appoitment with doctor menson is at 4/5/204 at 01:30 Pm"),
             
             
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class AppoitmentsNots extends StatelessWidget {
   AppoitmentsNots({
    super.key,
    required this.label
  });
  String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(136, 158, 158, 158)
      ),
      child:  Column(
        children: [
          Expanded(child: Text(label, style: const TextStyle(color: Color.fromARGB(255, 80, 80, 80)),)),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 5,),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Cancel", style: TextStyle(color: primaryColor),),
              ),
            ],
          )
        ],
      ),
    );
  }
}