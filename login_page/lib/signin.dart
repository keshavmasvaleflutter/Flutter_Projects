import 'dart:developer';
import 'package:flutter/material.dart';
import 'main.dart';
import 'signup.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

TextEditingController userNameTextEditingController = TextEditingController();
TextEditingController passwordTextEditingController = TextEditingController();

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class _LoginPageState extends State<LoginPage> {
  //CONTROLLERS

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  "images/welcome_image.png",
                  height: 200,
                  width: 250,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sign in here",
                            style: TextStyle(
                              color: Color.fromARGB(255, 31, 37, 221),
                              fontWeight: FontWeight.w700,
                              fontSize: 30,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Welcome back..!",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: userNameTextEditingController,
                  //key: userNameKey,
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    label: const Text(
                      "Enter username",
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    prefixIcon: const Icon(
                      Icons.person,
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
                    hintText: "Enter Password",
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
                  height: 30,
                ),
                SizedBox(
                  height: 50,
                  width: 375,
                  child: ElevatedButton(
                    onPressed: () async {
                      //log(await "$getLoginFormData()");
                      bool validationForm = _formKey.currentState!.validate();
                      if (validationForm) {
                        bool flag = false;
                        for (int i = 0; i < user.length; i++) {
                          if (user[i].username ==
                                  userNameTextEditingController.text.trim() &&
                              user[i].password ==
                                  passwordTextEditingController.text.trim()) {
                            flag = true;
                            // break;
                          }
                        }
                        if (flag == true) {
                          userNameTextEditingController.clear();
                          passwordTextEditingController.clear();
                          
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text("Login Succesfully"))
                          );
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                        } else {
                          userNameTextEditingController.clear();
                          passwordTextEditingController.clear();
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Incorrect username or password")));
                        }
                      }
                      // signinValidation;
                      //bool loginValidated = _formKey.currentState!.validate();

                      // if (loginValidated) {
                      //   ScaffoldMessenger.of(context)
                      //       .showSnackBar(const SnackBar(
                      //     backgroundColor: Colors.white,
                      //     //Pop up messaage
                      //     content: Text(
                      //       "Login Failed",
                      //       style: TextStyle(
                      //         color: Colors.black,
                      //       ),
                      //     ),
                      //   ));
                      // }
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
                      "Sign in",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Center(
                  child: Text(
                    "Or create an account",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignupPage()));
                        },
                        child: const Text(
                          "Sign up",
                          style: TextStyle(
                            color: Color.fromARGB(255, 31, 37, 221),
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
