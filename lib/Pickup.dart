import 'package:flutter/material.dart';

class Pickup extends StatefulWidget {
  const Pickup({Key? key}) : super(key: key);

  @override
  _PickupState createState() => _PickupState();
}

String? _selectedValue;

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
            height: 10,
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
                      leading: Radio<String>(
                        groupValue: _selectedValue,
                        activeColor: Colors.deepOrange,
                        value: 'Option1',
                        onChanged: (value) {
                          setState(() {
                            _selectedValue = value; // Update the group value
                          });
                        },
                      ),
                      title: const Text(
                        "Car Location",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text(
                        "Pickup from car's location",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
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
                      leading: Radio<String>(
                        groupValue: _selectedValue,
                        activeColor: Colors.deepOrange,
                        value: 'Option2',
                        onChanged: (value) {
                          setState(() {
                            _selectedValue = value; // Update the group value
                          });
                        },
                      ),
                      title: const Text(
                        "Miami International Airport",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text(
                        "Airport",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                      trailing: const Text("\120",
                          style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 14,
                          )),
                    ),
                    const Divider(color: Colors.grey),
                    ListTile(
                      leading: Radio<String>(
                        groupValue: _selectedValue,
                        activeColor: Colors.deepOrange,
                        value: 'Option3',
                        onChanged: (value) {
                          setState(() {
                            _selectedValue = value; // Update the group value
                          });
                        },
                      ),
                      title: const Text(
                        "Ford International Airport",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text(
                        "Upload your driver's license",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                      trailing: const Text("\120",
                          style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 14,
                          )),
                    ),
                    const Divider(color: Colors.grey),
                    ListTile(
                      leading: Radio<String>(
                        groupValue: _selectedValue,
                        activeColor: Colors.deepOrange,
                        value: 'Option4',
                        onChanged: (value) {
                          setState(() {
                            _selectedValue = value; // Update the group value
                          });
                        },
                      ),
                      title: const Text(
                        "Cruiseport Destinations",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text(
                        "1001 North America Way, Miami, FL 33132",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                      trailing: const Text("\120",
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
