import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:medical_app/contants/color.dart';
import 'package:medical_app/features/home/all_view_page.dart';
import 'package:medical_app/widgets/custom_button.dart';

class DocorViewPage extends StatelessWidget {
  const DocorViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                //stack  inmage
                Stack(children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 2,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/d2.png"),
                            fit: BoxFit.cover)),
                  ),
                  const Positioned(
                    right: 0.0,
                    top: 0.0,
                    child: Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Icon(Icons.favorite, color: Colors.grey,),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1.2,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    margin: const EdgeInsets.fromLTRB(16, 240, 16, 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: primaryColor,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.white60,
                              blurRadius: 50,
                              spreadRadius: 20)
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Dr. Nara ram",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                        const Text(
                          "neurologist",
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            PannableRatingBar(
                              rate: 4.0,
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
                              "4.0",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ]),
                //avaraible text
                const SizedBox(
                  height: 5,
                ),

                const Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Available time",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "9:00Am - 8:00",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Doctor Details",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Reloaded 1 of 1055 libraries in 568ms (compile: 24 ms, reload: 188 ms, reassemble: 277 ms). Performing hot reload... ",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 15,
                ),
                //reviews corousel
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Doctors Reviews"),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AllViewPage(
                                      name: "Doctors",
                                    )));
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "view all",
                          style: TextStyle(fontSize: 12, color: primaryColor),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                customCorousel(context),
                const SizedBox(
                  height: 5,
                ),

                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ),
        bottomSheet: Container(
          height: 110,
          width: double.infinity,
          color: Colors.white,
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Doctors Fees",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "500 ksh",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  )
                ],
              ),
              customButton(context, "Book Appointment", () {}),
            ],
          ),
        ),
      ),
    );
  }

  Widget customCorousel(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 120.0,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: false,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        //enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
      items: [
        customTileReview(context),
        customTileReview(context),
      ].map((item) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: item,
            );
          },
        );
      }).toList(),
    );
  }

  Widget customTileReview(
    BuildContext context,
  ) {
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
                color: const Color.fromARGB(150, 127, 170, 240),
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                    image: AssetImage("assets/images/d4.png"),
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
                const Text(
                  "Dr. nara ram",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text(
                  "cardiologist",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                Row(
                  children: [
                    PannableRatingBar(
                      rate: 4.0,
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
                      "4.0",
                      style: TextStyle(fontSize: 13, color: Colors.blue),
                    )
                  ],
                ),
              ],
            ),
          ),
          //icon
        ],
      ),
    );
  }
}
