import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_app/features/auth/verifacation_page.dart';
import 'package:medical_app/info/data.dart';
import 'package:medical_app/widgets/custom_button.dart';

// ignore: must_be_immutable
class SignUpPage extends StatefulWidget {
   SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
    String? dropDownValue = "+254";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  width: 200,
                  height: 200,
                  child: SvgPicture.asset(loginSvg, semanticsLabel: 'Acme Logo')),
              const SizedBox(
                height: 20,
              ),
              //text
              const Text("You will receive 4 digit code \n to verify your phone number", style: TextStyle(color: Colors.grey),),
               const SizedBox(
                height: 10,
              ),
              //input
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(111, 195, 195, 195),
                  borderRadius: BorderRadius.circular(12),
                ),
                height: 52,
                //width: MediaQuery.of(context).size.height * 0.6,
                child: ListTile(
                  leading: customDropDown(),
                  title: TextField(
                  controller: TextEditingController(),
                  decoration: const InputDecoration(
                    hintText: "Enter your Phone number",
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none
                    )
                  ),
                ),
                )
              ),
              const SizedBox(height: 20,),
              customButton(context, "Continue", () {
                //navigate to verify number
                Navigator.push(context, MaterialPageRoute(builder: (context) =>const VerifyNumberPage()));
              })
            ],
          ),
        ),
      ),
    ));
  }

  Widget customDropDown(){
    return DropdownButton<String>(
      items: <String>[
        '+20',  // Egypt
    '+21',  // Libya (Libyan Arab Jamahiriya)
    '+212', // Morocco
    '+213', // Algeria
    '+216', // Tunisia
    '+218', // Libya
    '+220', // Gambia
    '+221', // Senegal
    '+222', // Mauritania
    '+223', // Mali
    '+224', // Guinea
    '+225', // Côte d'Ivoire (Ivory Coast)
    '+226', // Burkina Faso
    '+227', // Niger
    '+228', // Togo
    '+229', // Benin
    '+230', // Mauritius
    '+231', // Liberia
    '+232', // Sierra Leone
    '+233', // Ghana
    '+234', // Nigeria
    '+235', // Chad
    '+236', // Central African Republic
    '+237', // Cameroon
    '+238', // Cape Verde
    '+239', // São Tomé and Príncipe
    '+240', // Equatorial Guinea
    '+241', // Gabon
    '+242', // Republic of the Congo
    '+243', // Democratic Republic of the Congo
    '+244', // Angola
    '+245', // Guinea-Bissau
    '+246', // Diego Garcia (British Indian Ocean Territory)
    '+247', // Ascension Island (Saint Helena)
    '+248', // Seychelles
    '+249', // Sudan
    '+250', // Rwanda
    '+251', // Ethiopia
    '+252', // Somalia
    '+253', // Djibouti
    '+254', // Kenya
    '+255', // Tanzania
    '+256', // Uganda
    '+257', // Burundi
    '+258', // Mozambique
    '+260', // Zambia
    '+261', // Madagascar
    '+262', // Réunion (France)
    '+263', // Zimbabwe
    '+264', // Namibia
    '+265', // Malawi
    '+266', // Lesotho
    '+267', // Botswana
    '+268', // Eswatini (Swaziland)
    '+269', // Comoros
    '+27',  // South Africa
    '+290', // Saint Helena
    '+291', // Eritrea
    '+292', // South Sudan (provisional code)
    '+293', // Western Sahara (provisional code)
    '+294', // Djibouti (alternative code)
    '+295', // Somaliland (provisional code)
    '+296', // São Tomé and Príncipe (alternative code)
    '+297', // Aruba
    '+298', // Faroe Islands
    '+299', // Greenland
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Container(
            padding: const EdgeInsets.only(left: 8),
            child: Text(value, style: const TextStyle(fontSize: 12),),
          ),
        );
      }).toList(),
      value: dropDownValue,
      underline: const SizedBox(height: 0,),
      dropdownColor: Colors.white,
      icon: Container(
        padding: const EdgeInsets.only(left: 10),
        child: const Icon(Icons.arrow_drop_down),

      ),
      onChanged: (String? newValue) {
        setState(() {
          dropDownValue = newValue;
        });
      },
      );
  }
}
