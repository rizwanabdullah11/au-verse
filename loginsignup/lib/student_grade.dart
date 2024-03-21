import 'package:flutter/material.dart';

class GradeActivity extends StatelessWidget {
  const GradeActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black.withOpacity(0.8),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20.0),
            Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.blue.shade800,
              height: 70,
              child: const Center(
                child: Text(
                  'Student Grade Report',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            // Registration ID Field
            const Row(
              children: [
                Text(
                  'Registration ID:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: TextField(
                    style: TextStyle(color: Colors.white), // Added text color
                    decoration: InputDecoration(
                      hintText: '',
                      hintStyle: TextStyle(color: Colors.white70), // Added hint text color
                      border: InputBorder.none, // Removed the underline border
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Text(
                  'Name:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: TextField(
                    style: TextStyle(color: Colors.white), // Added text color
                    decoration: InputDecoration(
                      hintText: '',
                      hintStyle: TextStyle(color: Colors.white70), // Added hint text color
                      border: InputBorder.none, // Removed the underline border
                    ),
                  ),
                ),
              ],
            ),

            const Row(
              children: [
                Text(
                  'SGPA:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: TextField(
                    style: TextStyle(color: Colors.white), // Added text color
                    decoration: InputDecoration(
                      hintText: '',
                      hintStyle: TextStyle(color: Colors.white70), // Added hint text color
                      border: InputBorder.none, // Removed the underline border
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20.0),
            // Table
            Table(
              border: TableBorder.all(color: Colors.blue.shade800), // Change border color
              columnWidths: const {
                0: FlexColumnWidth(1),
                1: FlexColumnWidth(3), // Increase size for Course
                2: FlexColumnWidth(1),
                3: FlexColumnWidth(1), // Decrease size for Grade
                4: FlexColumnWidth(1),
              },
              children: [
                // First Row with Values
                TableRow(
                  children: [
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        child: const Text(
                          'Sr No.',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        child: const Text(
                          'Course', // Increase size for Course
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0, // Adjust font size
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        child: const Text(
                          'Cr.Hrs',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        child: const Text(
                          'Grade', // Decrease size for Grade
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0, // Adjust font size
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        child: const Text(
                          'GP',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // Remaining Rows
                for (var i = 1; i <= 8; i++)
                  buildTableRow(i),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Function to generate a TableRow with serial numbers
  TableRow buildTableRow(int serialNumber) {
    return TableRow(
      children: [
        TableCell(
          child: Container(
            height: 40.0,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue.shade800),
            ),
            alignment: Alignment.center,
            child: Text(
              '$serialNumber',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        TableCell(
          child: Container(
            height: 40.0,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue.shade800),
            ),
          ),
        ),
        TableCell(
          child: Container(
            height: 40.0,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue.shade800),
            ),
          ),
        ),
        TableCell(
          child: Container(
            height: 40.0,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue.shade800),
            ),
          ),
        ),
        TableCell(
          child: Container(
            height: 40.0,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue.shade800),
            ),
          ),
        ),
      ],
    );
  }
}
