import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:country_calling_code_picker/country.dart';
import 'package:country_calling_code_picker/picker.dart';
import 'package:country_calling_code_picker/functions.dart';
import 'package:rental_app/Verify.dart';

class Phone extends StatefulWidget {
  const Phone({super.key});

  @override
  State<Phone> createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  Country? _selectedCountry;
  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _initializeCountry();
  }

  void _initializeCountry() async {
    try {
      final country = await getDefaultCountry(context);
      if (mounted) {
        setState(() {
          _selectedCountry = country;
        });
      }
    } catch (e) {
      debugPrint("Error initializing country: $e");
    }
  }

  void _showCountryPicker() async {
    if (!mounted) return;

    final selectedCountry = await showModalBottomSheet<Country>(
      context: context,
      builder: (BuildContext context) {
        return _CountryPickerContent(
          onCountrySelected: (Country country) {
            Navigator.pop(context, country);
          },
        );
      },
    );

    if (selectedCountry != null && mounted) {
      setState(() {
        _selectedCountry = selectedCountry;
      });
    }
  }

  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(
            Ionicons.close_sharp,
            color: Colors.white,
            size: 25,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Mobile Number',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 73,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  width: 73,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  width: 73,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  width: 73,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Enter Your Phone Number",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Please enter your mobile number; we'll send \n you a verification code.",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _phoneNumberController,
                decoration: InputDecoration(
                  prefixIcon: IconButton(
                    icon: _selectedCountry != null
                        ? Image.asset(
                            _selectedCountry!.flag,
                            width: 50,
                            height: 50,
                            package: 'country_calling_code_picker',
                          )
                        : const Icon(Icons.flag),
                    onPressed: _showCountryPicker,
                  ),
                  labelText: "Phone Number",
                  labelStyle: const TextStyle(color: Colors.white),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: "Enter your phone number",
                  hintStyle: const TextStyle(color: Colors.grey),
                ),
                style: const TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.deepOrange,
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value ?? false;
                    });
                  },
                ),
                const Text(
                  'Get Updates',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.42),
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
                        builder: (context) => const Verify(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Text(
                    "Get OTP",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CountryPickerContent extends StatelessWidget {
  final void Function(Country) onCountrySelected;

  const _CountryPickerContent({required this.onCountrySelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Select a Country",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: CountryPickerWidget(
              onSelected: (Country country) => onCountrySelected(country),
            ),
          ),
        ],
      ),
    );
  }
}
