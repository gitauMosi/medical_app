import 'package:flutter/material.dart';
import 'package:medical_app/contants/color.dart';
import 'package:medical_app/widgets/custom_button.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filter"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Specialist",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(105, 158, 158, 158),
                    borderRadius: BorderRadius.circular(12)),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "specialist",
                            style: TextStyle(color: Colors.grey),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.arrow_drop_down),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Specialist",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(105, 158, 158, 158),
                          //shape: BoxShape.rectangle,
                          border: Border.all(
                            color: Colors.blue,
                            width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(12)),
                          child:  const Center(child: Text("Low", style: TextStyle(fontWeight: FontWeight.bold),)),
                    ),
                  ),
                    Flexible(
                      child: Container(
                      margin: const EdgeInsets.all(5),
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          //shape: BoxShape.rectangle,
                          border: Border.all(
                            color: Colors.blue,
                            width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(12)),
                          child:  const Center(child: Text("Medium", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)),
                                        ),
                    ),
                    Flexible(
                      child: Container(
                      margin: const EdgeInsets.all(5),
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(105, 158, 158, 158),
                          //shape: BoxShape.rectangle,
                          border: Border.all(
                            color: Colors.blue,
                            width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(12)),
                          child: const Center(child:  Text("High", style: TextStyle(fontWeight: FontWeight.bold),)),
                                        ),
                    ),
                ],
              ),
               const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Gender",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          //shape: BoxShape.rectangle,
                          border: Border.all(
                            color: Colors.blue,
                            width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(12)),
                          child:  const Center(child: Text("All", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)),
                         
                    ),
                  ),
                    Flexible(
                      child: Container(
                      margin: const EdgeInsets.all(5),
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(105, 158, 158, 158),
                          
                          //shape: BoxShape.rectangle,
                          border: Border.all(
                            color: Colors.blue,
                            width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(12)),
                           child:  const Center(child: Text("Male", style: TextStyle(fontWeight: FontWeight.bold),)),
                          
                                        ),
                    ),
                    Flexible(
                      child: Container(
                      margin: const EdgeInsets.all(5),
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(105, 158, 158, 158),
                          //shape: BoxShape.rectangle,
                          border: Border.all(
                            color: Colors.blue,
                            width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(12)),
                          child: const Center(child:  Text("Female", style: TextStyle(fontWeight: FontWeight.bold),)),
                                        ),
                    ),
                ],
              ),
              const SizedBox(height: 30,),
              customButton(context, "Find", (){}),
            ],
          ),

        ),
      ),

    );
  }
}
