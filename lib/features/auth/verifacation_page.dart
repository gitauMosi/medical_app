import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:medical_app/contants/color.dart';
import 'package:medical_app/features/auth/create_account_page.dart';
import 'package:medical_app/widgets/custom_button.dart';

class VerifyNumberPage extends StatefulWidget {
  const VerifyNumberPage({super.key});

  @override
  State<VerifyNumberPage> createState() => _VerifyNumberPageState();
}

class _VerifyNumberPageState extends State<VerifyNumberPage> {
    bool _onEditing = true;
  String? _code;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Verify Phone Number", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("A code has been sent to your phone +254700000000", style: TextStyle(color: Colors.grey),),
              const Text("Enter the code here",  style: TextStyle(color: Colors.grey)),
               VerificationCode(
                textStyle: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Theme.of(context).primaryColor),
                keyboardType: TextInputType.number,
                underlineColor: Colors
                    .amber, // If this is null it will use primaryColor: Colors.red from Theme
                length: 4,
                cursorColor:
                    Colors.blue, // If this is null it will default to the ambient
                // clearAll is NOT required, you can delete it
                // takes any widget, so you can implement your design
                clearAll: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'clear all',
                    style: TextStyle(
                        fontSize: 14.0,
                        decoration: TextDecoration.underline,
                        color: Colors.blue[700]),
                  ),
                ),
                margin: const EdgeInsets.all(12),
                onCompleted: (String value) {
                  setState(() {
                    _code = value;
                  });
                },
                onEditing: (bool value) {
                  setState(() {
                    _onEditing = value;
                  });
                  if (!_onEditing) FocusScope.of(context).unfocus();
                },
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Center(
                  child: _onEditing
                      ? const Text('Please enter full code')
                      : Text('Your code: $_code'),
                ),
              ),
               const SizedBox(height: 15,),
              const Text("Don't Receive a code", style: TextStyle(color: Colors.grey),),
               const SizedBox(height: 15,),
              const Text("Resent",  style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),),
              const SizedBox(height: 30,),
              customButton(context, "Create Account",(){
                //navigate to home page
                Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAccountPage()));
        
              }),
               const SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
