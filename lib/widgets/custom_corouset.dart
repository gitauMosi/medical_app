import 'package:flutter/material.dart';
import 'package:medical_app/contants/color.dart';
import 'package:medical_app/features/home/order_page.dart';

Widget customCorouselCard(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
        color: primaryColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(15)),
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Oxygen Supply",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25)),
            const Text("Get oxyge  cylinder at \n home \nby online order",
                style: TextStyle(color: Colors.white)),
            // const SizedBox(height: 15,),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderPage()));
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  child: const Text(
                    "Order now",
                    style: TextStyle(color: Colors.blue),
                  )),
            )
          ],
        ),
        Flexible(
          child: Container(
              color: Colors.transparent,
              height: 100,
              width: 60,
              child: Image.asset(
                "assets/logos/5.png",
                fit: BoxFit.cover,
              )),
        ),
      ],
    ),
  );
}
