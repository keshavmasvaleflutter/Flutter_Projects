import 'package:flutter/material.dart';
import 'home_page.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State createState() => _VerificationPageState();
}

final otpController1 = TextEditingController();
final otpController2 = TextEditingController();
final otpController3 = TextEditingController();
final otpController4 = TextEditingController();

final _focusNode = FocusNode();

void _unfocingKeybord() {
  _focusNode.unfocus();
}

class _VerificationPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 60,
                child: BackButton(
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              Row(
                children: [
                  Image.asset("images/circle_img2.png"),
                ],
              )
            ],
          ),
          const Row(
            children: [
              SizedBox(
                width: 20,
                height: 50,
              ),
              Text(
                "Verification",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
                height: 70,
              ),
              SizedBox(
                height: 46,
                width: 272,
                child: Text(
                  "Enter the OTP code from the phone we just sent you.",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  border: Border.all(
                    width: 1.0,
                    color: const Color.fromRGBO(204, 211, 196, 1),
                  ),
                ),
                child: TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none)),
                  keyboardType: TextInputType.number,
                  controller: otpController1,
                ),
              ),
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  border: Border.all(
                    width: 1.0,
                    color: const Color.fromRGBO(204, 211, 196, 1),
                  ),
                ),
                child: TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none)),
                  keyboardType: TextInputType.number,
                  controller: otpController2,
                ),
              ),
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  border: Border.all(
                    width: 1.0,
                    color: const Color.fromRGBO(204, 211, 196, 1),
                  ),
                ),
                child: TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none)),
                  keyboardType: TextInputType.number,
                  controller: otpController3,
                ),
              ),
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  border: Border.all(
                    width: 1.0,
                    color: const Color.fromRGBO(204, 211, 196, 1),
                  ),
                ),
                child: TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none)),
                  keyboardType: TextInputType.number,
                  controller: otpController4,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 20,
              ),
              const Text(
                "Don’t receive OTP code! ",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  "Resend",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              if (otpController1.text.isNotEmpty &&
                  otpController2.text.isNotEmpty &&
                  otpController3.text.isNotEmpty &&
                  otpController4.text.isNotEmpty) {
                  _unfocingKeybord();          
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
                otpController1.clear();
                otpController2.clear();
                otpController3.clear();
                otpController4.clear();
              } else {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text(
                    "Enter correct OTP",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  padding: EdgeInsets.only(left: 120, bottom: 10),
                  backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                ));
              }
            },
            child: Container(
              height: 50,
              width: 354,
              margin: const EdgeInsets.all(13),
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
                    "Submit",
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
        ],
      ),
    );
  }
}
