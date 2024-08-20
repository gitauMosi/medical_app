import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:medical_app/features/home/docor_view.dart';

Widget customViewdDoctors(String urlImg, String name) {
  return Column(
    //crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: 120,
        height: 110,
        margin: const EdgeInsets.all(5),
        //padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(urlImg),
            fit: BoxFit.cover,
          ),
          color: const Color.fromARGB(166, 191, 190, 190),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 3),
        child: Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ),
    ],
  );
}

Widget customAvailableDoctorsWidget(BuildContext context, String urlImg, String name, String rate) {
  double rating = double.parse(rate);
  return GestureDetector(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const DocorViewPage()));
    },
    child: Container(
      width: 125,
      height: 180,
      margin: const EdgeInsets.all(5),
      //padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: const Color.fromARGB(233, 223, 222, 222),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 120,
            height: 110,
            margin: const EdgeInsets.only(bottom: 5),
            //padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(urlImg),
                fit: BoxFit.cover,
              ),
              color: const Color.fromARGB(166, 191, 190, 190),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 3),
            child: Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 3),
            child: Text(
              "psychiatrist",
              style: TextStyle(color: Colors.grey, fontSize: 10),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //rating bar
              PannableRatingBar(
                rate: rating,
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
              const Text(
                "3.0",
                style: TextStyle(fontSize: 12, color: Colors.blue),
              )
            ],
          )
        ],
      ),
    ),
  );
}
