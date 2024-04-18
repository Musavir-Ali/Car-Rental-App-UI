import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';

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
    'ORDER A RIDE ',
    'SELECT A CAR',
    'RIDE IN STYLE',
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
                    ),
                    Center(
                      child: Text(
                        imageTexts[index], // Display corresponding text
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 20.0,
                    // ),
                    // Text(
                    //   secondTexts[index], // Display corresponding text
                    //   style: TextStyle(
                    //     color: Colors.white,
                    //     fontSize: 18.0,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
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
