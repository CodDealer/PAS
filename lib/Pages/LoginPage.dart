// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:pas1_mobile_11pplg2_24/Controller/LoginController.dart';
// import 'package:pas1_mobile_11pplg2_24/Widget/myButton.dart';
// import 'package:pas1_mobile_11pplg2_24/Widget/myTextField.dart';
//
//
//
// class Loginutama extends StatelessWidget {
//   Loginutama({super.key});
//
//   final LoginController loginController = Get.put(LoginController());
//   final TextEditingController usernameController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(child: Container()), // Spacer at the top
//           myTextField(
//             hintText: 'username',
//             isObscure: false,
//             textStyle: const TextStyle(fontSize: 15),
//             rad: 8,
//             controller: usernameController,
//             textInputType: TextInputType.text,
//           ),
//           const SizedBox(height: 20),
//           myTextField(
//             hintText: 'password',
//             isObscure: true,
//             textStyle: const TextStyle(fontSize: 15),
//             rad: 8,
//             controller: passwordController,
//             textInputType: TextInputType.text,
//           ),
//           Expanded(child: Container()), // Spacer at the bottom
//           Obx(() => myButton(
//             textButton: const Text("Login"),
//             backgroundColor: Colors.blueGrey,
//             textColor: Colors.white,
//             radius: 8,
//             elevation: 0,
//             onPressed: loginController.isLoading.value
//                 ? null
//                 : () {
//               loginController.LoggerIn(
//                   usernameController, passwordController);
//             },
//           )),
//           Expanded(child: Container()),
//         ],
//       ),
//     );
//   }
// }
