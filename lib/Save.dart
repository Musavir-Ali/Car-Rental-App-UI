import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ionicons/ionicons.dart';
import 'package:rental_app/Details.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Icon(
                    Ionicons.location_sharp,
                    color: Colors.deepOrange,
                  ),
                ),
                Text("  New York",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Icon(
                    Ionicons.notifications_outline,
                    color: Colors.deepOrange,
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text("Rent a car Anytime",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SearchBox(),
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text("Top Brands",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 2.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        "assets/images/Bentleylogo.png",
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(
                        "assets/images/Audilogo.png",
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.black,
                      backgroundImage: AssetImage(
                        "assets/images/Mercedeslogo.png",
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        "assets/images/BMWlogo.png",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Text("Popular Cars",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text("View All",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                    child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Container(
                          height: 206,
                          width: 227,
                          decoration: BoxDecoration(
                            color: Colors.grey[800],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Detail(),
                                    ),
                                  );
                                },
                                child: SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.22,
                                  width: 277,
                                  child: Image.asset(
                                    "assets/images/BMW840i.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text("BMW 840i",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.deepOrange,
                                          fontWeight: FontWeight.bold)),
                                  Spacer(),
                                  Icon(
                                    Ionicons.star,
                                    color: Colors.deepOrange,
                                    size: 15,
                                  ),
                                  Text("4.5",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 4,
                                  )
                                ],
                              ),
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text("Available Now",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(
                                    Ionicons.car_sport,
                                    color: Colors.green,
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text("4 Seats",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                  Spacer(),
                                  Text("\$200/Hr",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 10,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Container(
                          height: 206,
                          width: 227,
                          decoration: BoxDecoration(
                            color: Colors.grey[800],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.22,
                                width: 277,
                                child: Image.asset(
                                  "assets/images/MercedesGLE.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text("Mercedes GLE",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.deepOrange,
                                          fontWeight: FontWeight.bold)),
                                  Spacer(),
                                  Icon(
                                    Ionicons.star,
                                    color: Colors.deepOrange,
                                    size: 15,
                                  ),
                                  Text("4.8",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 4,
                                  )
                                ],
                              ),
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text("Available from 10:00 AM",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(
                                    Ionicons.car_sport,
                                    color: Colors.green,
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text("4 Seats",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                  Spacer(),
                                  Text("\$150/Hr",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 10,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Container(
                          height: 206,
                          width: 227,
                          decoration: BoxDecoration(
                            color: Colors.grey[800],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.22,
                                width: 277,
                                child: Image.asset(
                                  "assets/images/Lamb.jpeg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text("Lamborghini",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.deepOrange,
                                          fontWeight: FontWeight.bold)),
                                  Spacer(),
                                  Icon(
                                    Ionicons.star,
                                    color: Colors.deepOrange,
                                    size: 15,
                                  ),
                                  Text("5",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 4,
                                  )
                                ],
                              ),
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text("Available Now",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(
                                    Ionicons.car_sport,
                                    color: Colors.green,
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text("2 Seats",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                  Spacer(),
                                  Text("\$250/Hr",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 10,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Container(
                          height: 206,
                          width: 227,
                          decoration: BoxDecoration(
                            color: Colors.grey[800],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.22,
                                width: 277,
                                child: Image.asset(
                                  "assets/images/Bently.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text("Bentley",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.deepOrange,
                                          fontWeight: FontWeight.bold)),
                                  Spacer(),
                                  Icon(
                                    Ionicons.star,
                                    color: Colors.deepOrange,
                                    size: 15,
                                  ),
                                  Text("4.4",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 4,
                                  )
                                ],
                              ),
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text("Available Now",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(
                                    Ionicons.car_sport,
                                    color: Colors.green,
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text("2 Seats",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                  Spacer(),
                                  Text("\$250/Hr",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 10,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Container(
                          height: 206,
                          width: 227,
                          decoration: BoxDecoration(
                            color: Colors.grey[800],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.22,
                                width: 277,
                                child: Image.asset(
                                  "assets/images/AlfaRomeo.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text("Alfa Romeo",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.deepOrange,
                                          fontWeight: FontWeight.bold)),
                                  Spacer(),
                                  Icon(
                                    Ionicons.star,
                                    color: Colors.deepOrange,
                                    size: 15,
                                  ),
                                  Text("4.1",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 4,
                                  )
                                ],
                              ),
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text("Available Now",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(
                                    Ionicons.car_sport,
                                    color: Colors.green,
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text("2 Seats",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                  Spacer(),
                                  Text("\$150/Hr",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 10,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text("Top Rated Cars",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                    child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Container(
                          height: 206,
                          width: 227,
                          decoration: BoxDecoration(
                            color: Colors.grey[800],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.22,
                                width: 277,
                                child: Image.asset(
                                  "assets/images/BMWwhite.jpeg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text("BMW",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.deepOrange,
                                          fontWeight: FontWeight.bold)),
                                  Spacer(),
                                  Icon(
                                    Ionicons.star,
                                    color: Colors.deepOrange,
                                    size: 15,
                                  ),
                                  Text("5",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 4,
                                  )
                                ],
                              ),
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text("Available Now",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(
                                    Ionicons.car_sport,
                                    color: Colors.green,
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text("4 Seats",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                  Spacer(),
                                  Text("\$150/Hr",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 10,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Container(
                          height: 206,
                          width: 227,
                          decoration: BoxDecoration(
                            color: Colors.grey[800],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.22,
                                width: 277,
                                child: Image.asset(
                                  "assets/images/Farrari.jpeg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text("Farari",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.deepOrange,
                                          fontWeight: FontWeight.bold)),
                                  Spacer(),
                                  Icon(
                                    Ionicons.star,
                                    color: Colors.deepOrange,
                                    size: 15,
                                  ),
                                  Text("5",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 4,
                                  )
                                ],
                              ),
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text("Available Now",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(
                                    Ionicons.car_sport,
                                    color: Colors.green,
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text("2 Seats",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                  Spacer(),
                                  Text("\$250/Hr",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 10,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Container(
                          height: 206,
                          width: 227,
                          decoration: BoxDecoration(
                            color: Colors.grey[800],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.22,
                                width: 277,
                                child: Image.asset(
                                  "assets/images/Porche.jpeg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text("Porche",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.deepOrange,
                                          fontWeight: FontWeight.bold)),
                                  Spacer(),
                                  Icon(
                                    Ionicons.star,
                                    color: Colors.deepOrange,
                                    size: 15,
                                  ),
                                  Text("5",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 4,
                                  )
                                ],
                              ),
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text("Available Now",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(
                                    Ionicons.car_sport,
                                    color: Colors.green,
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text("2 Seats",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                  Spacer(),
                                  Text("\$200/Hr",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 10,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Container(
                          height: 206,
                          width: 227,
                          decoration: BoxDecoration(
                            color: Colors.grey[800],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.22,
                                width: 277,
                                child: Image.asset(
                                  "assets/images/Lamborgini.jpeg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text("Lamborghini",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.deepOrange,
                                          fontWeight: FontWeight.bold)),
                                  Spacer(),
                                  Icon(
                                    Ionicons.star,
                                    color: Colors.deepOrange,
                                    size: 15,
                                  ),
                                  Text("5",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 4,
                                  )
                                ],
                              ),
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text("Available Now",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(
                                    Ionicons.car_sport,
                                    color: Colors.green,
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text("2 Seats",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                  Spacer(),
                                  Text("\$150/Hr",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 10,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
              ],
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      )),
    );
  }
}

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        hintText: "Search any car...",
        hintStyle: TextStyle(
          color: Colors.black,
        ),
        prefixIcon: Icon(Icons.search,
            color: Colors.black), // Optional: Adds a search icon
        suffixIcon: Icon(
          Icons.filter_list,
          color: Colors.black,
        ), // Optional: Adds a filter icon
        filled: true, // Optional: Makes the background white or filled
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)), // Round corners
          borderSide: BorderSide(
            color: Colors.black,
            width: 3, // Border width
          ),
        ),
        // This removes the default blue border on focus
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(
            color: Colors.black,
            width: 6, // Width when focused
          ),
        ),
      ),
    );
  }
}