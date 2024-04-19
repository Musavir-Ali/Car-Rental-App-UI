import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:get/route_manager.dart';
import 'package:rental_app/CreateAccount.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int _currentIndex = 0;

// Define list of texts corresponding to each image
  final List<String> imageTexts = [
    'ORDER A RIDE ',
    'SELECT A CAR',
    'RIDE IN STYLE',
  ];
  final List<String> secondTexts = [
    'Order a luxury ride immediately,  ',
    'Sport, Limousine, Terrain... whatever',
    'Enjoy the ride in luxury cars,',
  ];
  final List<String> thirdTexts = [
    'or book a car for upcoming event.',
    'your preference is, we have it.',
    'with a with professional driver.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: CarouselSlider.builder(
              options: CarouselOptions(
                enableInfiniteScroll: false,
                height: MediaQuery.of(context).size.height,
                viewportFraction: 1.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                aspectRatio: MediaQuery.of(context).size.aspectRatio,
                enlargeCenterPage: true,
                autoPlay: false,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                pauseAutoPlayOnTouch: true,
                scrollDirection: Axis.horizontal,
                scrollPhysics: const BouncingScrollPhysics(),
              ),
              itemCount: 3,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/Slider${index + 1}.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.65,
                          ),
                          Text(
                            imageTexts[index], // Display corresponding text
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            secondTexts[index], // Display corresponding text
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            thirdTexts[index], // Display corresponding text
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CreateAccount(),
                                ),
                              );
                            },
                            child: Text(
                              'Create Account',
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepOrange,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 20),
                              textStyle: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Sign In',
                              style: TextStyle(color: Colors.deepOrange),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
