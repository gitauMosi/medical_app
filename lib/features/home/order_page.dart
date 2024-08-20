import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/contants/color.dart';
import 'package:medical_app/widgets/custom_button.dart';
import 'package:medical_app/widgets/custom_textfield.dart';

// ignore: must_be_immutable
class OrderPage extends StatelessWidget {
  OrderPage({super.key});
  TextEditingController locationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Oxygen Delivery",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Gender",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SingleChildScrollView(
                child: Row(
                  children: [
                    for (int i = 1; i < 5; i++)
                      Container(
                        width: 50,
                        height: 50,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: i == 1
                                ? primaryColor
                                : const Color.fromARGB(105, 158, 158, 158),
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                            child: Text(
                          "$i",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        )),
                      )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Select location",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextfield(
                  label: "Enter Address",
                  controller: locationController,
                  obscureText: false),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 350,
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(121, 214, 172, 72),
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Google",
                              style: TextStyle(
                                  color: Color.fromARGB(196, 244, 67, 54))),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 2),
                                decoration: const BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Colors.white),
                                child: const Icon(Icons.add),
                              ),
                              Container(
                                padding: const EdgeInsets.only(bottom: 4),
                                decoration: const BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Colors.white),
                                child: const Icon(CupertinoIcons.minus),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
             const  SizedBox(height: 100,)
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 55,
        width: double.infinity,
        color: Colors.white,
        padding: const EdgeInsets.all(10),
        child: customButton(context,"Order", (){}),
      ),
    );
  }
}
