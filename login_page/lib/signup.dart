import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:login_page/main.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

List<Map> userData = [];

class _SignupPageState extends State<SignupPage> {
  

  //CONTROLLERS
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController userNameTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        centerTitle: true,
        title: const Text(
          "Sign up",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 25,
          ),
        ),
        //backgroundColor: const Color.fromARGB(255, 31, 37, 221),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // const SizedBox(
                //   height: 50,
                // ),
                const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Create Account",
                            style: TextStyle(
                              color: Color.fromARGB(255, 31, 37, 221),
                              fontWeight: FontWeight.w700,
                              fontSize: 30,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextFormField(
                  controller: nameTextEditingController,
                  //key: userNameKey,

                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(238, 237, 246, 250),
                    hintText: "Name",
                    label: const Text(
                      "Enter your name",
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    prefixIcon: const Icon(
                      Icons.person,
                    ),
                  ),
                  validator: (value) {
                    log("IN name Validator");
                    if (value == null || value.isEmpty) {
                      return "Please enter name";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: emailTextEditingController,
                  //key: userNameKey,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(238, 237, 246, 250),
                    hintText: "Email",
                    label: const Text(
                      "Enter Email",
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    prefixIcon: const Icon(
                      Icons.email_rounded,
                    ),
                  ),
                  validator: (value) {
                    log("IN PASSWORD Validator");
                    if (value == null || value.isEmpty) {
                      return "Please enter Password";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: userNameTextEditingController,
                  //key: userNameKey,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(238, 237, 246, 250),
                    hintText: "Username",
                    label: const Text(
                      "Enter username",
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    prefixIcon: const Icon(
                      Icons.person_add_alt_1_rounded,
                    ),
                  ),
                  validator: (value) {
                    log("IN Username Validator");
                    if (value == null || value.isEmpty) {
                      return "Please enter username";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 20,
                ),

                TextFormField(
                  controller: passwordTextEditingController,
                  //key: userNameKey,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(238, 237, 246, 250),
                    hintText: "Password",
                    label: const Text(
                      "Enter Password",
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    prefixIcon: const Icon(
                      Icons.lock,
                    ),
                    suffixIcon: const Icon(
                      Icons.remove_red_eye_outlined,
                    ),
                  ),
                  validator: (value) {
                    log("IN PASSWORD Validator");
                    if (value == null || value.isEmpty) {
                      return "Please enter Password";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 35,
                ),
                SizedBox(
                  height: 50,
                  width: 375,
                  child: ElevatedButton(
                    onPressed: () async {
                      bool valivationForm = _formKey.currentState!.validate();
                      if (!valivationForm) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text("Enetr your details"),
                        ));
                      } else {
                        LoginFormData obj = LoginFormData(
                          username: userNameTextEditingController.text.trim(),
                          name: nameTextEditingController.text.trim(),
                          email: emailTextEditingController.text.trim(),
                          password: passwordTextEditingController.text.trim(),
                        );

                        // userData.add();
                        await insertLoginFormData(obj);
                        user = await getLoginFormData();
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("Sign up Successful")));
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignupPage()));
                      }
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      backgroundColor: const MaterialStatePropertyAll(
                        Color.fromARGB(255, 31, 37, 221),
                      ),
                    ),
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                // const SizedBox(
                //   height: 35,
                // ),
                // const Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Text("Already have an account",
                //       style: TextStyle(
                //         fontWeight: FontWeight.w500,
                //         fontSize: 13,
                //         color: Colors.black,
                //       ),
                //     )
                //   ],
                // ),
                // Column(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     const SizedBox(
                //       height: 25,
                //     ),
                //     const Text(
                //       "Or continue with",
                //       style: TextStyle(
                //         color: Color.fromARGB(255, 31, 37, 221),
                //         fontWeight: FontWeight.w500,
                //       ),
                //     ),
                //     const SizedBox(
                //       height: 13,
                //     ),
                //     Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //       children: [
                //         const Icon(Icons.facebook_rounded),
                //         const Icon(Icons.apple_rounded),
                //         Image.asset('images/google_logo.png'),
                //       ],
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
