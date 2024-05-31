import 'package:flutter/material.dart';
import 'package:plant_app_01/plant_detail_pg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  "images/circle_img3.png",
                  width: 254,
                  height: 71,
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  const SizedBox(
                    height: 64,
                    width: 176,
                    child: Text(
                      "Find your favorite plants",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 104,
                      ),
                      Image.asset("images/pg4_logo.png"),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              height: 80,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 80,
                      width: 350,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromRGBO(204, 231, 185, 1),
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 13, left: 25),
                                child: const SizedBox(
                                  height: 32,
                                  width: 100,
                                  child: Text(
                                    "30% OFF",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 24,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 7),
                                child: const SizedBox(
                                  height: 20,
                                  width: 76,
                                  child: Text(
                                    "02-23 April",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              left: 95,
                              top: 5,
                            ),
                            child: Image.asset(
                              "images/plant_01.png",
                              width: 120,
                              height: 108,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 90,
                      width: 350,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromRGBO(204, 231, 185, 1),
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 20, left: 25),
                                child: const SizedBox(
                                  height: 32,
                                  width: 100,
                                  child: Text(
                                    "30% OFF",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 24,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 7),
                                child: const SizedBox(
                                  height: 20,
                                  width: 76,
                                  child: Text(
                                    "02-23 April",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              left: 95,
                              top: 5,
                            ),
                            child: Image.asset(
                              "images/plant_01.png",
                              width: 120,
                              height: 108,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Image.asset("images/sliding_dots.png"),
              ],
            ),
            const SizedBox(height: 5,),
            const Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                Text(
                  "Indoor",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Container(
                height: 190,
                margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PlantDetails()));
                      },
                      child: Container(
                        height: 190,
                        width: 141,
                        padding: const EdgeInsets.only(top: 10),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.all(Radius.circular(9.4)),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.06),
                              blurRadius: 18.8,
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Column(children: [
                          Container(
                            margin: const EdgeInsets.only(
                                top: 5, bottom: 5, left: 20, right: 20),
                            child: Image.asset(
                              "images/plant_02.png",
                              height: 112.8,
                              width: 90.24,
                            ),
                          ),
                          const Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Snake Plants",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13.16,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 20,
                                height: 33,
                              ),
                              const Text(
                                "₹350",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.92,
                                  color: Color.fromRGBO(62, 102, 24, 1),
                                ),
                              ),
                              const SizedBox(
                                width: 43,
                              ),
                              Image.asset(
                                "images/pg4_logo2.png",
                                height: 26,
                                width: 26,
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PlantDetails()));
                      },
                      child: Container(
                        height: 185,
                        width: 141,
                        padding: const EdgeInsets.only(top: 10),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.all(Radius.circular(9.4)),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.06),
                              blurRadius: 18.8,
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Column(children: [
                          Container(
                            margin: const EdgeInsets.only(
                                top: 5, bottom: 5, left: 20, right: 20),
                            child: Image.asset(
                              "images/plant_02.png",
                              height: 112.8,
                              width: 90.24,
                            ),
                          ),
                          const Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Snake Plants",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13.16,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 20,
                                height: 33,
                              ),
                              const Text(
                                "₹350",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.92,
                                  color: Color.fromRGBO(62, 102, 24, 1),
                                ),
                              ),
                              const SizedBox(
                                width: 43,
                              ),
                              Image.asset(
                                "images/pg4_logo2.png",
                                height: 26,
                                width: 26,
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PlantDetails()));
                      },
                      child: Container(
                        height: 185,
                        width: 141,
                        padding: const EdgeInsets.only(top: 10),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.all(Radius.circular(9.4)),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.06),
                              blurRadius: 18.8,
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Column(children: [
                          Container(
                            margin: const EdgeInsets.only(
                                top: 5, bottom: 5, left: 20, right: 20),
                            child: Image.asset(
                              "images/plant_02.png",
                              height: 112.8,
                              width: 90.24,
                            ),
                          ),
                          const Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Snake Plants",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13.16,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 20,
                                height: 33,
                              ),
                              const Text(
                                "₹350",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.92,
                                  color: Color.fromRGBO(62, 102, 24, 1),
                                ),
                              ),
                              const SizedBox(
                                width: 43,
                              ),
                              Image.asset(
                                "images/pg4_logo2.png",
                                height: 26,
                                width: 26,
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PlantDetails()));
                      },
                      child: Container(
                        height: 185,
                        width: 141,
                        padding: const EdgeInsets.only(top: 10),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.all(Radius.circular(9.4)),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.06),
                              blurRadius: 18.8,
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Column(children: [
                          Container(
                            margin: const EdgeInsets.only(
                                top: 5, bottom: 5, left: 20, right: 20),
                            child: Image.asset(
                              "images/plant_02.png",
                              height: 112.8,
                              width: 90.24,
                            ),
                          ),
                          const Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Snake Plants",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13.16,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 20,
                                height: 33,
                              ),
                              const Text(
                                "₹350",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.92,
                                  color: Color.fromRGBO(62, 102, 24, 1),
                                ),
                              ),
                              const SizedBox(
                                width: 43,
                              ),
                              Image.asset(
                                "images/pg4_logo2.png",
                                height: 26,
                                width: 26,
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            const SizedBox(height: 5,),
            const Divider(),
            const SizedBox(height: 5,),
            const Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                Text(
                  "Outdoor",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
                height: 190,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PlantDetails()));
                      },
                      child: Container(
                        height: 190,
                        width: 141,
                        padding: const EdgeInsets.only(top: 10),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.all(Radius.circular(9.4)),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.06),
                              blurRadius: 18.8,
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Column(children: [
                          Container(
                            margin: const EdgeInsets.only(
                                top: 5, bottom: 5, left: 20, right: 20),
                            child: Image.asset(
                              "images/plant_02.png",
                              height: 112.8,
                              width: 90.24,
                            ),
                          ),
                          const Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Snake Plants",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13.16,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 20,
                                height: 33,
                              ),
                              const Text(
                                "₹350",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.92,
                                  color: Color.fromRGBO(62, 102, 24, 1),
                                ),
                              ),
                              const SizedBox(
                                width: 43,
                              ),
                              Image.asset(
                                "images/pg4_logo2.png",
                                height: 26,
                                width: 26,
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PlantDetails()));
                      },
                      child: Container(
                        height: 185,
                        width: 141,
                        padding: const EdgeInsets.only(top: 10),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.all(Radius.circular(9.4)),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.06),
                              blurRadius: 18.8,
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Column(children: [
                          Container(
                            margin: const EdgeInsets.only(
                                top: 5, bottom: 5, left: 20, right: 20),
                            child: Image.asset(
                              "images/plant_02.png",
                              height: 112.8,
                              width: 90.24,
                            ),
                          ),
                          const Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Snake Plants",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13.16,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 20,
                                height: 33,
                              ),
                              const Text(
                                "₹350",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.92,
                                  color: Color.fromRGBO(62, 102, 24, 1),
                                ),
                              ),
                              const SizedBox(
                                width: 43,
                              ),
                              Image.asset(
                                "images/pg4_logo2.png",
                                height: 26,
                                width: 26,
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PlantDetails()));
                      },
                      child: Container(
                        height: 185,
                        width: 141,
                        padding: const EdgeInsets.only(top: 10),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.all(Radius.circular(9.4)),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.06),
                              blurRadius: 18.8,
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Column(children: [
                          Container(
                            margin: const EdgeInsets.only(
                                top: 5, bottom: 5, left: 20, right: 20),
                            child: Image.asset(
                              "images/plant_02.png",
                              height: 112.8,
                              width: 90.24,
                            ),
                          ),
                          const Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Snake Plants",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13.16,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 20,
                                height: 33,
                              ),
                              const Text(
                                "₹350",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.92,
                                  color: Color.fromRGBO(62, 102, 24, 1),
                                ),
                              ),
                              const SizedBox(
                                width: 43,
                              ),
                              Image.asset(
                                "images/pg4_logo2.png",
                                height: 26,
                                width: 26,
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PlantDetails()));
                      },
                      child: Container(
                        height: 185,
                        width: 141,
                        padding: const EdgeInsets.only(top: 10),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.all(Radius.circular(9.4)),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.06),
                              blurRadius: 18.8,
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Column(children: [
                          Container(
                            margin: const EdgeInsets.only(
                                top: 5, bottom: 5, left: 20, right: 20),
                            child: Image.asset(
                              "images/plant_02.png",
                              height: 112.8,
                              width: 90.24,
                            ),
                          ),
                          const Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Snake Plants",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13.16,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 20,
                                height: 33,
                              ),
                              const Text(
                                "₹350",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.92,
                                  color: Color.fromRGBO(62, 102, 24, 1),
                                ),
                              ),
                              const SizedBox(
                                width: 43,
                              ),
                              Image.asset(
                                "images/pg4_logo2.png",
                                height: 26,
                                width: 26,
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
