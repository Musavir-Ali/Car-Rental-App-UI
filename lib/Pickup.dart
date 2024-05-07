import 'package:flutter/material.dart';

class Pickup extends StatefulWidget {
  const Pickup({Key? key}) : super(key: key);

  @override
  _PickupState createState() => _PickupState();
}

bool _isChecked = false;

class _PickupState extends State<Pickup> {
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
          'Select Pickup Location',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Help',
              style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.27,
            width: double.infinity,
            child: Image.asset("assets/images/Map.png",
                fit: BoxFit.cover, width: double.infinity),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Pickup Locations",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Card(
              color: Colors.grey[850],
              child: Padding(
                padding: EdgeInsets.all(0.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: Radio(
                        groupValue:
                            _isChecked, // Add the required 'groupValue' argument here
                        activeColor: Colors.deepOrange,
                        value: _isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            _isChecked = value ?? true;
                          });
                        },
                      ),
                      title: const Text(
                        "Car Location",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      subtitle: const Text(
                        "Pickup from car's location",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      trailing: const Text("Free",
                          style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 14,
                          )),
                    ),
                    const Divider(color: Colors.grey),
                    ListTile(
                      leading: Radio(
                        groupValue:
                            _isChecked, // Add the required 'groupValue' argument here
                        activeColor: Colors.deepOrange,
                        value: _isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            _isChecked = value ?? false;
                          });
                        },
                      ),
                      title: const Text(
                        "Miami International Airport",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "We'll send you a OTP",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      trailing: Text("\120",
                          style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 14,
                          )),
                    ),
                    Divider(color: Colors.grey),
                    ListTile(
                      leading: Radio(
                        groupValue:
                            _isChecked, // Add the required 'groupValue' argument here
                        activeColor: Colors.deepOrange,
                        value: _isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            _isChecked = value ?? false;
                          });
                        },
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
                      trailing: Text("\120",
                          style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 14,
                          )),
                    ),
                    Divider(color: Colors.grey),
                    ListTile(
                      leading: Radio(
                        groupValue:
                            _isChecked, // Add the required 'groupValue' argument here
                        activeColor: Colors.deepOrange,
                        value: _isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            _isChecked = value ?? false;
                          });
                        },
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
                      trailing: Text("\120",
                          style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 14,
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
