import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:rental_app/ProfilePhoto.dart';

class FistScreen extends StatelessWidget {
  const FistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Icon(
                      Ionicons.close_sharp,
                      color: Color.fromARGB(255, 70, 76, 80),
                      size: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Get Approved to Drive",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Since this is your first trip, you'll need to ",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      "provide us with some information before you ",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      "can check out.",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Card(
                  color: Colors.grey[850],
                  child: const Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(
                            Icons.person,
                            color: Colors.deepOrange,
                          ),
                          title: Text(
                            "Profile Photo",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          subtitle: Text(
                            "Complete your profile details",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Divider(color: Colors.grey),
                        ListTile(
                          leading: Icon(
                            Icons.phone,
                            color: Colors.deepOrange,
                          ),
                          title: Text(
                            "Phone Number",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          subtitle: Text(
                            "We'll send you a OTP",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Divider(color: Colors.grey),
                        ListTile(
                          leading: Icon(
                            Icons.card_membership,
                            color: Colors.deepOrange,
                          ),
                          title: Text(
                            "Driver's License",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          subtitle: Text(
                            "Upload your driver's license",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Divider(color: Colors.grey),
                        ListTile(
                          leading: Icon(
                            Icons.wallet,
                            color: Colors.deepOrange,
                          ),
                          title: Text(
                            "Payment Method",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          subtitle: Text(
                            "We accept all major credit cards",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: SizedBox(
                    width: double.infinity,
                    height: 40.0,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfilePhoto(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      ),
                      child: const Text(
                        "Continue",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
