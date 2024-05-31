import 'package:flutter/material.dart';

class PlantDetails extends StatefulWidget {
  const PlantDetails({super.key});

  @override
  State createState() => _PlantDetailsState();
}

class _PlantDetailsState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Column(
        children: [
          const SizedBox(
            height: 57,
          ),
          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              BackButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                color: const Color.fromRGBO(62, 102, 24, 1),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "images/plant_detail_img.png",
                width: 195,
                height: 243.75,
              ),
            ],
          ),
          const SizedBox(
            height: 28,
          ),
          Row(
            children: [
              const SizedBox(
                width: 168,
              ),
              Image.asset("images/sliding_dots.png"),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              SizedBox(
                width: 31,
              ),
              Text(
                "Snake Plants",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  color: Color.fromRGBO(48, 48, 48, 1),
                ),
              ),
            ],
          ),
          const SizedBox(height: 13),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 31),
                width: 298,
                height: 40,
                child: const Text(
                    "Plansts make your life with minimal and happy love the plants more and enjoy life."),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 25),
                height: 203,
                width: 342,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(118, 152, 75, 1),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(25),
                          child: Column(
                            children: [
                              Image.asset("images/plant_height_img.png"),
                              const SizedBox(
                                height: 22,
                              ),
                              const Column(
                                children: [
                                  Text(
                                    "Height",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "30cm-40cm",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(25),
                          child: Column(
                            children: [
                              Image.asset("images/thermometer.png"),
                              const SizedBox(
                                height: 10,
                              ),
                              const Column(
                                children: [
                                  Text(
                                    "Temperature",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "20’C-25’C",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(25),
                          child: Column(
                            children: [
                              Image.asset("images/Ciramic_pot.png"),
                              const SizedBox(
                                height: 17,
                              ),
                              const Column(
                                children: [
                                  Text(
                                    "Pot",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Ciramic Pot",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 0,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 38, top: 4),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Total Price",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "₹ 350",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text("Plant added to Cart",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(103, 133, 74, 1),
                                  ),
                                ),
                                padding: EdgeInsets.only(left: 115, bottom: 18),
                                backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                                duration: Durations.medium2,
                              ),
                            );
                          }, 
                          child: Container(
                            margin: const EdgeInsets.only(left: 48, top: 4),
                            width: 150,
                            height: 48.39,
                            padding: const EdgeInsets.only(
                                top: 12.1,
                                bottom: 20.16,
                                left: 12.1,
                                right: 20.16),
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(103, 133, 74, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.06)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  "images/cart_button.png",
                                  height: 19.35,
                                  width: 19.35,
                                ),
                                const SizedBox(
                                  width: 13,
                                ),
                                const Text(
                                  "Add to cart",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.52,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
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
    );
  }
}
