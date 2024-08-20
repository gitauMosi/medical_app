import 'package:flutter/material.dart';
import 'package:medical_app/contants/color.dart';
import 'package:medical_app/widgets/custom_button.dart';

class ServiceView extends StatelessWidget {
  const ServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Medicine Order"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            //height: double.infinity,
            color: Colors.transparent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50,),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: primaryColor, borderRadius: BorderRadius.circular(12)),
                  child: const Center(child: Icon(Icons.add, color: Colors.white)),
                ),
                const SizedBox(height: 5,),
                const Text(
                    "Upload your prescription \n only 'Heloo Doc.'\n prescription are accepted"),
                const SizedBox(height: 15,),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: primaryColor, borderRadius: BorderRadius.circular(12)),
                  child: const Center(child: Icon(Icons.qr_code, color: Colors.white)),
                ),
                const SizedBox(height: 5,),
                const Text("QR Scanner \n Scan the Qr code on\n your prescriptions"),
                const SizedBox(height: 100,),
              ],
            ),
          ),
        ),
      ),
       bottomSheet: Container(
        height: 60,
        width: double.infinity,
        color: Colors.white,
        padding: const EdgeInsets.all(10),
        child: customButton(context,"Continue", (){}),),
    );
  }
}
