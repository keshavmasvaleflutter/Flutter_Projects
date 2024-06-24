import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/player.dart';

class Gallary extends StatefulWidget {
  const Gallary({super.key});

  @override
  State createState() => _GallaryState();
}

class _GallaryState extends State {
  int selectedIndex = 0;
  int songCard = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Image.asset(
              "assets/images/gallary_pg_img/gallary_pg_bag.png",
              fit: BoxFit.cover,
              width: MediaQuery.sizeOf(context).width,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 190,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Text(
                    "A.L.O.N.E",
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        minimumSize: MaterialStatePropertyAll(Size(120, 37)),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromRGBO(255, 46, 0, 1)),
                      ),
                      child: Text(
                        "Subscribe",
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(19, 19, 19, 1),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 0),
                          blurRadius: 30,
                          spreadRadius: 20,
                          color: Colors.black)
                    ],
                    color: Colors.black,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                              "assets/images/gallary_pg_img/scrolling_dot1.png"),
                          const SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                              "assets/images/gallary_pg_img/scrolling_dot2.png"),
                          const SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                              "assets/images/gallary_pg_img/scrolling_dot2.png"),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            height: 40,
                            width: 20,
                          ),
                          Text(
                            "Discography",
                            style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(255, 46, 0, 1),
                            )),
                          ),
                          const SizedBox(
                            width: 216,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              "See all",
                              style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(248, 162, 69, 1),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Player()));
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                      "assets/images/gallary_pg_img/dead_inside.png"),
                                  const SizedBox(
                                    height: 9,
                                  ),
                                  Text(
                                    "Dead inside",
                                    style: GoogleFonts.inter(
                                      textStyle: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(203, 200, 200, 1),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "2020",
                                    style: GoogleFonts.inter(
                                      textStyle: const TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(132, 125, 125, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Player()));
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                      "assets/images/gallary_pg_img/alone.png"),
                                  const SizedBox(
                                    height: 9,
                                  ),
                                  Text(
                                    "Alone",
                                    style: GoogleFonts.inter(
                                      textStyle: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(203, 200, 200, 1),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "2023",
                                    style: GoogleFonts.inter(
                                      textStyle: const TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(132, 125, 125, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Player()));
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                      "assets/images/gallary_pg_img/dead_inside.png"),
                                  const SizedBox(
                                    height: 9,
                                  ),
                                  Text(
                                    "Dead inside",
                                    style: GoogleFonts.inter(
                                      textStyle: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(203, 200, 200, 1),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "2020",
                                    style: GoogleFonts.inter(
                                      textStyle: const TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(132, 125, 125, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Player()));
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                      "assets/images/gallary_pg_img/heartless.png"),
                                  const SizedBox(
                                    height: 9,
                                  ),
                                  Text(
                                    "Heartless ",
                                    style: GoogleFonts.inter(
                                      textStyle: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(203, 200, 200, 1),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "2023",
                                    style: GoogleFonts.inter(
                                      textStyle: const TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(132, 125, 125, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16, right: 16, top: 19, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Popular singles",
                              style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(203, 200, 200, 1),
                              )),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                "See all",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(248, 162, 69, 1),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height / 1.6,
                        child: ListView.builder(
                            padding: const EdgeInsets.only(top: 2, bottom: 25),
                            itemCount: songCard,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Player()));
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          left: 20, right: 15, top: 20),
                                      child: Image.asset(
                                          "assets/images/gallary_pg_img/song1_logo.png"),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Player()));
                                    },
                                    child: SizedBox(
                                      width: 250,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "We Are Chaos",
                                                style: GoogleFonts.inter(
                                                    textStyle: const TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color.fromRGBO(
                                                      203, 200, 200, 1),
                                                )),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 4,
                                          ),
                                          Row(
                                            children: [
                                              const SizedBox(
                                                width: 3,
                                              ),
                                              Text(
                                                "2023",
                                                style: GoogleFonts.inter(
                                                  textStyle: const TextStyle(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color.fromRGBO(
                                                        203, 200, 200, 1),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Image.asset(
                                                  "assets/images/gallary_pg_img/dot.png"),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                "Easy Living",
                                                style: GoogleFonts.inter(
                                                  textStyle: const TextStyle(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color.fromRGBO(
                                                        203, 200, 200, 1),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.more_vert,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ],
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              size: 30,
            ),
            label: "Favorite",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_outlined,
              size: 30,
            ),
            label: "Search",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: "Home",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel_outlined),
            label: "Cart",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_rounded,
              size: 30,
            ),
            label: "Profile",
            backgroundColor: Colors.black,
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (int index) {
          selectedIndex = index;
          setState(() {});
        },
      ),
    );
  }
}
