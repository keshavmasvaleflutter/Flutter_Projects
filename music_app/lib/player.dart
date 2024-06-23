import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  State createState() => _PlayerState();
}

class _PlayerState extends State {
  int selectedIndex = 0;
  int songCard = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset(
            "assets/images/player_pg_img/player_pg_bg.png",
            fit: BoxFit.cover,
            width: MediaQuery.sizeOf(context).width,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width / 1.8,
                    margin:
                        const EdgeInsets.only(top: 470, left: 10, right: 10),
                    child: Text(
                      "Alone in the Abyss",
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: Color.fromRGBO(230, 154, 21, 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Youlakou",
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 25,
                  padding: const EdgeInsets.only(left: 335, right: 5),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(blurRadius: 25, color: Colors.black),
                    ],
                  ),
                  child: Image.asset(
                      "assets/images/player_pg_img/radix_icon.png")),
              Container(
                height: MediaQuery.sizeOf(context).height / 4.4,
                width: MediaQuery.sizeOf(context).width,
                padding: MediaQuery.of(context).padding / 4,
                color: Colors.black,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 17),
                          width: MediaQuery.sizeOf(context).width / 3,
                          child: Text(
                            "Dynamic Warmup |",
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(255, 255, 255, 1)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width / 2.2,
                        ),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width / 6,
                          child: Text(
                            "4 min",
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(255, 255, 255, 1)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                        child: Image.asset(
                      "assets/images/player_pg_img/player_rectangle.png",
                    )),
                    const SizedBox(
                      height: 25,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.repeat_one,
                          color: Colors.white,
                          size: 35,
                        ),
                        Icon(
                          Icons.skip_previous,
                          color: Colors.white,
                          size: 35,
                        ),
                        Icon(
                          Icons.play_circle,
                          color: Colors.white,
                          size: 50,
                        ),
                        Icon(
                          Icons.skip_next,
                          color: Colors.white,
                          size: 35,
                        ),
                        Icon(
                          Icons.volume_up,
                          color: Colors.white,
                          size: 35,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border, size: 30,),
            label: "Favorite",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined, size: 30,),
            label: "Search",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30,),
            label: "Home",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel_outlined),
            label: "Cart",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_rounded, size: 30,),
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
