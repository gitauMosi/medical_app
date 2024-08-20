import 'package:flutter/material.dart';
import 'package:medical_app/widgets/custom_button.dart';
import 'package:medical_app/widgets/custom_profile_avatar.dart';
import 'package:medical_app/widgets/custom_textfield.dart';

// ignore: must_be_immutable
class EditProfilePage extends StatelessWidget {
  EditProfilePage({super.key});
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit profile"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(2),
                child: Stack(children: [
                  cutsomProfileAvatar(context, "assets/images/dd1.jpeg"),
                  Positioned(
                    bottom: 0.0,
                    right: 0.0,
                    child: Container(
                      padding: const EdgeInsets.all(5.0),
                      decoration: const BoxDecoration(
                          color: Colors.green, shape: BoxShape.circle),
                      child: const Icon(Icons.edit),
                    ),
                  ),
                ]),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Name",
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomTextfield(
                      label: "Name",
                      controller: nameController,
                      obscureText: false),
                  const SizedBox(
                    height: 15,
                  ),
                   const Text(
                    "Email",
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomTextfield(
                      label: "Email",
                      controller: nameController,
                      obscureText: false),
                  const SizedBox(
                    height: 15,
                  ),
                   const Text(
                    "Phone Number",
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomTextfield(
                      label: "Phone Number",
                      controller: nameController,
                      obscureText: false),
                  const SizedBox(
                    height: 35,
                  ),
                  customButton(context, "Save", (){
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:  Text("Saved Succefully", style: TextStyle(color: Colors.white),), backgroundColor: Colors.green),);
                  })
                  
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
