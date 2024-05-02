import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Used for formatting dates

class SelectDate extends StatefulWidget {
  const SelectDate({super.key});

  @override
  State<SelectDate> createState() => _SelectDateState();
}

class _SelectDateState extends State<SelectDate> {
  // A list to store the selected date range
  List<DateTime?> _selectedDates = [];

  // Function to format dates for display
  String _formatDate(DateTime? date) {
    return date == null ? "None" : DateFormat.yMMMd().format(date);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 41, 23, 72),
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
          'Select Date',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Reset the date selection
              setState(() {
                _selectedDates = [];
              });
            },
            child: const Text(
              'Reset',
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
        children: [
          // Container with the selected date range
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            color: Colors.grey[900],
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min, // To center-align the content
                children: [
                  Text(
                    _formatDate(
                        _selectedDates.isNotEmpty ? _selectedDates[0] : null),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 10), // Add some spacing
                  const Icon(
                    Icons.arrow_forward, // Arrow icon
                    color: Colors.deepOrange,
                  ),
                  const SizedBox(
                      width: 10), // Add spacing between icon and text
                  Text(
                    _formatDate(
                        _selectedDates.length > 1 ? _selectedDates[1] : null),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: CalendarDatePicker2(
              config: CalendarDatePicker2Config(
                calendarType: CalendarDatePicker2Type.range,
              ),
              value: _selectedDates,
              onValueChanged: (dates) {
                setState(() {
                  _selectedDates = dates; // Update when the range changes
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
