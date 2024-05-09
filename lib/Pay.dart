import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Pay extends StatefulWidget {
  const Pay({super.key});

  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.deepOrange,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Checkout',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Payment Options",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Image.asset('assets/images/MasterCard.png'),
                    title: const Text("**** **** **** 5678",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    trailing: const Icon(Icons.arrow_drop_down_sharp,
                        color: Colors.white, size: 25),
                  ),
                  const Divider(color: Colors.grey),
                  const ListTile(
                    leading: Icon(Icons.wallet, color: Colors.white),
                    title: Text("Credit/Debit Card",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    trailing: Icon(Icons.arrow_drop_up_sharp,
                        color: Colors.white, size: 25),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const SizedBox(width: 10),
                            Image.asset(
                              "assets/images/MasterCard.png",
                            ),
                            const SizedBox(width: 10),
                            Image.asset("assets/images/Amix.png"),
                            const SizedBox(width: 10),
                            Image.asset("assets/images/Visa.png"),
                            const SizedBox(width: 10),
                            Image.asset("assets/images/Rupay.png"),
                            const SizedBox(width: 10),
                          ],
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: const TextField(
                            decoration: InputDecoration(
                              labelText: 'Card Number',
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: const Row(
                            children: [
                              Flexible(
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'MM/YY',
                                    labelStyle: TextStyle(
                                      color: Colors.white,
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  keyboardType: TextInputType.datetime,
                                ),
                              ),
                              SizedBox(width: 10.0),
                              Flexible(
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'CVV',
                                    labelStyle: TextStyle(
                                      color: Colors.white,
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  keyboardType: TextInputType.number,
                                  obscureText: true, // Hide CVV input
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10.0),
                      ],
                    ),
                  ),
                  const Divider(color: Colors.grey),
                  ListTile(
                    leading: Image.asset('assets/images/GooglePay.png'),
                    title: const Text("Apple Pay",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    trailing: const Icon(Icons.arrow_drop_down_sharp,
                        color: Colors.white, size: 25),
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
