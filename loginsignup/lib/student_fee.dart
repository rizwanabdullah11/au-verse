import 'package:flutter/material.dart';

class FeeActivity extends StatelessWidget {
  const FeeActivity({Key? key}) : super(key: key);

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
                  'AIR University Fee Bill',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Registration_ID: ',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white), // Set text color
            ),
            const SizedBox(height: 5),
            const Text(
              'Name: ',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white), // Set text color
            ),
            const SizedBox(height: 5),
            const Text(
              'Class Name: ',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white), // Set text color
            ),
            const SizedBox(height: 5),
            const Text(
              'Due Date: ',
              style: TextStyle(fontSize: 16, color: Colors.white), // Set text color
            ),
            const SizedBox(height: 5),
            const Text(
              'Bank Account Information:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white), // Set text color
            ),
            const SizedBox(height: 5),
            const Text(
              'Habib Metro Bank',
              style: TextStyle(fontSize: 16, color: Colors.white), // Set text color
            ),
            const Text(
              'AC NO.',
              style: TextStyle(fontSize: 16, color: Colors.white), // Set text color
            ),
            const SizedBox(height: 5),
            const Text(
              'AL-Habib Bank',
              style: TextStyle(fontSize: 16, color: Colors.white), // Set text color
            ),
            const Text(
              'AC NO.',
              style: TextStyle(fontSize: 16, color: Colors.white), // Set text color
            ),
            const SizedBox(height: 5),
            const Text(
              '1-Link ID: []',
              style: TextStyle(fontSize: 16, color: Colors.white), // Set text color
            ),
            const SizedBox(height: 10),
            Table(
              border: TableBorder.all(color: Colors.blue.shade800), // Set border color
              columnWidths: const {
                0: FlexColumnWidth(1), // Decreased column size
                1: FlexColumnWidth(0.5), // Decreased column size
              },
              children: const [
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 4.0),
                        child: Text(
                          'Description',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white), // Set text color
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 4.0),
                        child: Text(
                          'Amount (PKR)',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white), // Set text color
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 4.0),
                        child: Text(
                          'Miscellaneous Fee',
                          style: TextStyle(fontSize: 16, color: Colors.white), // Set text color
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 4.0),
                        child: Text(
                          '2,500',
                          style: TextStyle(fontSize: 16, color: Colors.white), // Set text color
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 4.0),
                        child: Text(
                          'Tuition Fee',
                          style: TextStyle(fontSize: 16, color: Colors.white), // Set text color
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 4.0),
                        child: Text(
                          '93,330',
                          style: TextStyle(fontSize: 16, color: Colors.white), // Set text color
                        ),
                      ),
                    ),
                  ],
                ),
                // Additional row for total amount
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 4.0),
                        child: Text(
                          'Total',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white), // Set text color
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 4.0),
                        child: Text(
                          '95,830',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white), // Set text color
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
            const SizedBox(height: 20),
            // Additional note
            const Text(
              'NOTE\n'
                  '1.Fee can be deposited at any branch (in any city) of Habib Metro Bank Ltd and Bank AL-Habib Ltd.\n'
                  '2.To facilitate the students, fee can be deposited by using Mobile App, ATM, Internet Banking through 1-Link or within the University premises at Bank Al-Habib Branch (IAA Building).\n'
                  '3.Bank to Charge late fee fine @ Rs.200/- per day after due date. Late fee fine will not be waived off.\n'
                  '4.Installments/Change of date would be allowed once in semester before due date.\n'
                  '5.Partial payment is not allowed while paying your fee online.\n'
                  '*This is system-generated fee bill & verifiable through AU account system.',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
