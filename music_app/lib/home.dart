import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/gallary.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.asset("assets/images/home_pg_img/homePage_background.png",
          height: MediaQuery.sizeOf(context).height/1.3,
            width: MediaQuery.sizeOf(context).width,
          ),
          Column(
            children: [
              const SizedBox(
                height: 410,
              ),
              Container(
                  height: 151,
                  //width: 310,
                  width: MediaQuery.sizeOf(context).width,
                  margin: const EdgeInsets.only(left: 25),
                  child: Text(
                    "Dancing between The shadows Of rhythm",
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(255, 255, 255, 1)),
                    ),
                  )),
            ],
          ),
          Column(
            children: [
              SizedBox(
                // height: 602,
                height: MediaQuery.sizeOf(context).height/1.4,
              ),
              Container(
                height: 200,
                width: 400,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 0),
                        blurRadius: 40,
                        spreadRadius: 30,
                        color: Colors.black)
                  ],
                  color: Colors.black,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Gallary()));
                      },
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            Color.fromRGBO(255, 46, 0, 1),
                          ),
                          minimumSize: MaterialStatePropertyAll(Size(250, 47))),
                      child: Text(
                        "Get started",
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(19, 19, 19, 1),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Gallary()));
                      },
                      style: const ButtonStyle(
                        minimumSize: MaterialStatePropertyAll(Size(250, 47)),
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                        side: MaterialStatePropertyAll(BorderSide(
                          color: Color.fromRGBO(255, 61, 0, 1),
                        )),
                      ),
                      child: Text(
                        "Continue with Email",
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(255, 46, 0, 1),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 39,
                      width: 210,
                      child: Text(
                        "by continuing you agree to terms of services and Privacy policy",
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(203, 200, 200, 0.671)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
