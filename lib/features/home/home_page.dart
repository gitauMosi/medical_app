import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/contants/color.dart';
import 'package:medical_app/features/home/all_view_page.dart';
import 'package:medical_app/features/home/filter_page.dart';
import 'package:medical_app/features/home/order_page.dart';
import 'package:medical_app/features/home/service_view.dart';
import 'package:medical_app/features/profile/edit_profile.dart';
import 'package:medical_app/widgets/custom_corouset.dart';
import 'package:medical_app/widgets/custom_textfield.dart';
import 'package:medical_app/widgets/doctors_view_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello Abc,",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Text("Find your specialist here")
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditProfilePage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: customAvatar(),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      padding: const EdgeInsets.all(10),
                      child: CustomTextfield(
                          label: "Find your doctor",
                          controller: TextEditingController(),
                          obscureText: false),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FilterPage()));
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(12)),
                        child: const Icon(
                          Icons.format_align_center_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //>>>>>>>Todo: crousel
              const SizedBox(
                height: 5,
              ),
              customCorousel(context),
              const SizedBox(
                height: 5,
              ),
              //specialist
              SizedBox(
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Specialists",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "View all",
                          style: TextStyle(fontSize: 13, color: primaryColor),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          customChip(
                              context,
                              "Cardioligists",
                              "assets/logos/1.png",
                              const Color.fromARGB(142, 255, 134, 64)),
                          customChip(
                              context,
                              "Neurologist",
                              "assets/logos/2.png",
                              const Color.fromARGB(129, 198, 64, 255)),
                          customChip(context, "Dentist", "assets/logos/3.png",
                              const Color.fromARGB(137, 255, 182, 64)),
                          customChip(
                              context,
                              "Cardioligists",
                              "assets/logos/4.png",
                              const Color.fromARGB(93, 64, 255, 80))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //services
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Services",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: (){
                              Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ServiceView()));
                          },
                          child: newServiceWidget(
                              context,
                              'medicine \norder',
                              Icons.medical_information,
                              const Color.fromARGB(142, 255, 134, 64)),
                        ),
                        newServiceWidget(
                            context,
                            'medicine \nremainder',
                            Icons.medical_services,
                            const Color.fromARGB(129, 198, 64, 255)),
                        newServiceWidget(
                            context,
                            'call \nAmbulance',
                            Icons.medication_liquid,
                            const Color.fromARGB(137, 255, 182, 64)),
                        GestureDetector(
                          onTap: (){
                              Navigator.push(context,
            MaterialPageRoute(builder: (context) => OrderPage()));
                          },
                          child: newServiceWidget(
                              context,
                              'oxgen',
                              Icons.medical_services_sharp,
                              const Color.fromARGB(93, 64, 255, 80)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //available doctor
              SizedBox(
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Available",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "View all",
                          style: TextStyle(fontSize: 13, color: primaryColor),
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          customAvailableDoctorsWidget(context,
                              "assets/images/d1.png", "Dr Evans", "3.0"),
                          customAvailableDoctorsWidget(context,
                              "assets/images/d2.png", "Dr. Nora", "4.0"),
                          customAvailableDoctorsWidget(context,
                              "assets/images/d4.png", "Dr melody", "3.0"),
                          customAvailableDoctorsWidget(context,
                              "assets/images/d2.png", "Dr. Nora", "4.0"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              //viewed doctor
              SizedBox(
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Available",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "View all",
                          style: TextStyle(fontSize: 13, color: primaryColor),
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          customViewdDoctors(
                              "assets/images/d2.png", "Dr. Nora"),
                          customViewdDoctors(
                              "assets/images/d1.png", "Dr Evans"),
                          customViewdDoctors(
                            "assets/images/d4.png",
                            "Dr melody",
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }

  Widget newServiceWidget(
      BuildContext context, String name, IconData icon, Color color) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: Column(
        children: [
          Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(12)),
            child: Icon(
              icon,
              color: Colors.black26,
              size: 30,
            ),
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget customChip(
      BuildContext context, String name, String urlImg, Color color) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AllViewPage(
                      name: name,
                     
                    )));
      },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Chip(
            side: BorderSide.none,
            avatar: Image.asset(urlImg),
            padding: const EdgeInsets.only(left: 4, top: 10, bottom: 10),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16), side: BorderSide.none),
            backgroundColor: color,
            label: Text(name)),
      ),
    );
  }

  Widget customAvatar() {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: const Color.fromARGB(137, 158, 158, 158),
          image: const DecorationImage(
              image: AssetImage("assets/images/d2.png"), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(12)),
    );
  }

  Widget customCorousel(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 150.0,
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
        customCorouselCard(context),
        customCorouselCard(context),
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
}
