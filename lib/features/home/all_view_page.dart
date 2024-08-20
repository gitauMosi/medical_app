import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:medical_app/contants/color.dart';
import 'package:medical_app/info/data.dart';
import 'package:medical_app/models/doctor_model.dart';

// ignore: must_be_immutable
class AllViewPage extends StatelessWidget {
   AllViewPage({super.key, required this.name});
   String name;
   //String urlImg;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Chip(
                        backgroundColor: primaryColor,
                        shape: CircleBorder(),
                        side: BorderSide.none,
                        label: Text(
                          "All",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Chip(
                      backgroundColor: const Color.fromARGB(134, 158, 158, 158),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      side: BorderSide.none,
                      label: const Text("Top Rated"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Chip(
                      backgroundColor: const Color.fromARGB(134, 158, 158, 158),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      side: BorderSide.none,
                      label: const Text("Most Viwed"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Chip(
                      backgroundColor: const Color.fromARGB(134, 158, 158, 158),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      side: BorderSide.none,
                      label: const Text("recommended"),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: doctors.length,
                itemBuilder: (context, index) {
                  return customTile(context, doctors[index]);
                })
          ],
        ),
      ),
    );
  }

  Widget customTile(BuildContext context, Doctor doctor) {
    return Container(
      width: double.infinity,
      height: 100,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(71, 158, 158, 158),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          //image
          Container(
            width: 90,
            height: double.maxFinite,
            decoration: BoxDecoration(
                color: const Color.fromARGB(151, 240, 216, 127),
                borderRadius: BorderRadius.circular(12),
                image:  DecorationImage(
                    image: AssetImage(doctor.urlImg),
                    fit: BoxFit.cover)),
          ),
          //texts
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //mainAxisSize: MainAxisSize.min,

              children: [
                 Text(
                  doctor.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                 const Text(
                  "cardiologist",
                  style:  TextStyle(color: Colors.grey, fontSize: 14),
                ),
                Row(
                  children: [
                    PannableRatingBar(
                      rate: double.parse(doctor.rate),
                      items: List.generate(
                          5,
                          (index) => const RatingWidget(
                                selectedColor: Colors.yellow,
                                unSelectedColor: Colors.grey,
                                child: Icon(
                                  Icons.star,
                                  size: 15,
                                ),
                              )),
                      onChanged: (value) {
                        // the rating value is updated on tap or drag.
                        // setState(() {
                        //   rating = value;
                        // });
                      },
                    ),
                     Text(
                      doctor.rate,
                      style: const TextStyle(fontSize: 13, color: Colors.blue),
                    )
                  ],
                ),
              ],
            ),
          ),
          //icon
          const Spacer(),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Icon(Icons.favorite, color: Colors.grey,),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
