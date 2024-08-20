import 'package:flutter/material.dart';
import 'package:medical_app/contants/color.dart';
import 'package:medical_app/features/auth/login.dart';
import 'package:medical_app/features/profile/appoitment_page.dart';
import 'package:medical_app/features/profile/edit_profile.dart';
import 'package:medical_app/features/profile/history_page.dart';
import 'package:medical_app/features/profile/prescription_page.dart';
import 'package:medical_app/features/profile/tracking_page.dart';
import 'package:medical_app/widgets/custom_profile_avatar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
        
                child: Column(
                  children: [
                    cutsomProfileAvatar(context, "assets/images/dd1.jpeg"),
                    const Text("Name", style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),),
                    const Text("info@gmail.com", style: TextStyle(color: Colors.grey),)
                  ],
                )),
               GestureDetector(
                onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfilePage()));
                },
                 child: const ListTile(
                    title:  Text("Edit Profile"),
                    trailing: Icon(Icons.arrow_forward_ios_sharp,),
                  ),
               ),
                 GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AppoitmentPage()));
                  },
                   child: const ListTile(
                    title:  Text("My Appointments"),
                    trailing: Icon(Icons.arrow_forward_ios_sharp,),
                                   ),
                 ),
                 GestureDetector(
                  onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => const TrackingPage()));
                  },
                   child: const ListTile(
                    title:  Text("Tracking"),
                    trailing: Icon(Icons.arrow_forward_ios_sharp,),
                                   ),
                 ),
                 GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const PrescriptionPage()));
                  
                  },
                   child: const ListTile(
                    title:  Text("Prescription"),
                    trailing: Icon(Icons.arrow_forward_ios_sharp,),
                                   ),
                 ),
                 GestureDetector(
                  onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => const HistoryPage()));
                  },
                   child: const ListTile(
                    title:  Text("History"),
                    trailing: Icon(Icons.arrow_forward_ios_sharp,),
                                   ),
                 ),
                 GestureDetector(
                  onTap: (){
                    //log out
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                  },
                   child: const ListTile(
                    title:  Text("Log Out"),
                    trailing: Icon(Icons.arrow_forward_ios_sharp,),
                                   ),
                 ),
                
        
            ],
          ),
        ),
      ),
    );
  }
}