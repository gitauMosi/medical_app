
import 'package:medical_app/models/doctor_model.dart';
import 'package:medical_app/models/service_model.dart';


// List<String> imagesDoct2 = [
//   "assets/images/dd1.jpeg"
//   "assets/images/dd2.jpeg"
//   "assets/images/dd3.jpeg"
//   "assets/images/dd4.jpeg"
//   "assets/images/dd5.jpeg"
//   "assets/images/dd6.jpeg"
//   "assets/images/dd7.jpeg"
//   "assets/images/dd8.jpeg"
// ];


String splashImageSvg = "assets/images/welcome.svg";
String illustrationImage1 = "assets/images/illust1.jpg";
String illustrationImage2 = "assets/images/doctor.svg";
String loginSvg = "assets/images/loginsvg.svg";



List<String> logos = [
  "assets/logos/1.png"
  "assets/logos/2.png"
  "assets/logos/3.png"
  "assets/logos/4.png"
  "assets/logos/5.png"
  "assets/logos/6.png"
  "assets/logos/7.png"
];
List<String> imagesDoct = [
  "assets/images/d1.png"
  "assets/images/d2.png"
  "assets/images/d3.png"
  "assets/images/d4.png"
];

List<Doctor> doctors = [
  Doctor(name: "Dr James", urlImg: "assets/images/d1.png", rate: "3.5"),
  Doctor(name: "Dr Nora", urlImg: "assets/images/d2.png", rate: "5.0"),
  Doctor(name: "Dr Ire", urlImg: "assets/images/d4.png", rate: "4.0"),
  Doctor(name: "Dr Emmy", urlImg: "assets/images/d2.png", rate: "3.5"),
  Doctor(name: "Dr Joy", urlImg: "assets/images/d4.png", rate: "5.0"),
];

List<DocService> specialist = [
DocService(name: "Cardioligists", urlImg: "assets/logos/1.png"),
DocService(name: "Nursing", urlImg: "assets/logos/2.png"),
DocService(name: "Cardioligists", urlImg: "assets/logos/3.png"),
DocService(name: "Nursing", urlImg: "assets/logos/4.png"),
DocService(name: "Nursing", urlImg: "assets/logos/5.png"),
DocService(name: "Nursing", urlImg: "assets/logos/6.png"),
DocService(name: "Nursing", urlImg: "assets/logos/7.png"),
];