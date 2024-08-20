import 'package:flutter/material.dart';
import 'package:medical_app/contants/color.dart';
import 'package:medical_app/features/auth/sign_up.dart';
import 'package:medical_app/widgets/custom_button.dart';
import 'package:medical_app/widgets/custom_textfield.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
   const LoginPage({super.key});
  
  @override
  Widget build(BuildContext context) {
     TextEditingController emailcontroller = TextEditingController();
   TextEditingController passwordcontroller = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               const  Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Text(
                    "Sign In",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                 SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
               CustomTextfield(label: "Email or Phone number", controller: emailcontroller, obscureText: false,),
               const SizedBox(height: 10,),
               CustomTextfield(label: "Password", controller: passwordcontroller, obscureText: true,),
                const SizedBox(
                  height: 20,
                ),
                customButton(context, "Sign in", () {}),
                const SizedBox(
                  height: 13,
                ),
                const Text("Dont't have an account ?",
                    style: TextStyle(fontSize: 13)),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: (){
                    //navigate to login
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
                  },
                  child: const Text(
                    "sign up",
                    style: TextStyle(color: primaryColor, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
