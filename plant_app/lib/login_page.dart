import 'package:flutter/material.dart';
import 'verification_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

final _focusNode = FocusNode();

void _unfocingKeybord() {
  _focusNode.unfocus();
}

class _LoginPageState extends State {
  final numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 160,
                    height: 128.2,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/circle_img.png"))),
                  ),
                ],
              ),
              const SizedBox(
                height: 45,
              ),
              const Text(
                "Log in",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(
                height: 55,
              ),
              Container(
                width: 320,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    width: 1.0,
                    color: const Color.fromRGBO(204, 211, 196, 1),
                  ),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 13,
                    ),
                    Image.asset("images/Vector.png"),
                    const SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      width: 250.0,
                      height: 80.0,
                      child: TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Mobile Number',
                        ),
                        keyboardType: TextInputType.number,
                        controller: numberController,
                        focusNode: _focusNode,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  if (numberController.text.isNotEmpty) {
                    _unfocingKeybord();
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VerificationPage()));
                    numberController.clear();
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text(
                        "Enter your number",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      padding: EdgeInsets.only(left: 120, bottom: 10, top: 8),
                      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                    ));
                  }
                },
                child: Container(
                  height: 50,
                  width: 320,
                  margin: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(124, 180, 70, 1),
                            Color.fromRGBO(62, 102, 24, 1)
                          ]),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Log in",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Image.asset("images/loginpg_plant.png"),
            ],
          ),
        ));
  }
}
