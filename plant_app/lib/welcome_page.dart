import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State createState() => _WelcomePageState();
}

class _WelcomePageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Column(
        children: [
          const SizedBox(
            height: 44,
          ),
          Image.asset('images/welcome_img.png'),
          const SizedBox(
            height: 5,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Enjoy your",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 34.22,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(47, 47, 47, 1),
                      )
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "life with ",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 34.22,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(47, 47, 47, 1),
                      )
                    ),
                  ),
                  Text(
                    "Plants",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 34.22,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(0, 0, 0, 1),
                      )
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Get Started",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,)
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
