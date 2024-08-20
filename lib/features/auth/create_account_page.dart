import 'package:flutter/material.dart';
import 'package:medical_app/features/main_page.dart';
import 'package:medical_app/widgets/custom_button.dart';
import 'package:medical_app/widgets/custom_textfield.dart';

// ignore: must_be_immutable
class CreateAccountPage extends StatefulWidget {
  CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
   TextEditingController nameController = TextEditingController();

   TextEditingController emailController = TextEditingController();

   TextEditingController passwordController = TextEditingController();

   TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
   

    List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  List<String> days = List.generate(31, (index) => (index + 1).toString());
   int startYear = 1940;
  int endYear = 2024;

  List<String> years = List.generate(
    endYear - startYear + 1,
    (index) => (startYear + index).toString(),
  );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Account"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Your name", style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
              
              const SizedBox(height: 5,),
              CustomTextfield(label: "Full Name..", controller: nameController, obscureText: false),
              const SizedBox(height: 15,),
          
              //date
              Text("Date of Birth", style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(111, 195, 195, 195),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: customDropDown(months, 'January'),
                  ),
                   Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(111, 195, 195, 195),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: customDropDown(days, '1'),
                  ),
                   Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(111, 195, 195, 195),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: customDropDown(years, '2024'),
                  )
                ],
              ),
               const SizedBox(height: 15,),
              Text("Email Address", style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
              const SizedBox(height: 5,),
              CustomTextfield(label: "Your Email here", controller: emailController, obscureText: false),
              const SizedBox(height: 15,),
              Text("Password", style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
              const SizedBox(height: 5,),
              CustomTextfield(label: "Your Password", controller: passwordController, obscureText: false),
              const SizedBox(height: 15,),
              Text("Confirm Password", style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
              const SizedBox(height: 5,),
              CustomTextfield(label: "Confirm your Password", controller: confirmPasswordController, obscureText: false),
              const SizedBox(height: 50,),
              customButton(context, "Get Started", () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const MainPage()));
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget customDropDown(List<String> items, String value) {
    return DropdownButton<String>(
      items: items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Container(
            padding: const EdgeInsets.only(left: 3),
            child: Text(value, style: const TextStyle(fontSize: 12),),
          ),
        );
      }).toList(),
      value: value,
      underline: const SizedBox(height: 0,),
      dropdownColor: Colors.white,
      icon: Container(
        padding: const EdgeInsets.only(left: 5),
        child: const Icon(Icons.arrow_drop_down),

      ),
      onChanged: (String? newValue) {
        setState(() {
          value = newValue!;
        });
      },
      );
  }
}

