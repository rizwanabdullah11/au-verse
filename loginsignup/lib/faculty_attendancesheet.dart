import 'package:flutter/material.dart';

class Attendance_sheetActivity extends StatelessWidget {
  const Attendance_sheetActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20.0),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.8), // Background color black with opacity
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Subject and Section information box
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      color: Colors.blue,
                      width: 1020,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Subject: Your Subject Here',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white, // Text color white
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Section: Your Section Here',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white, // Text color white
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    // Table
                    Table(
                      border: TableBorder.all(
                        color: Colors.blue, // Table border color blue
                      ),
                      columnWidths: const {
                        0: FlexColumnWidth(1), // ID column
                        1: FlexColumnWidth(1), // Name column
                        2: FlexColumnWidth(1), // Percentage column
                      },
                      children: [
                        const TableRow(
                          children: [
                            TableCell(
                              child: Center(child: Text('ID', style: TextStyle(color: Colors.white))), // Text color white
                            ),
                            TableCell(
                              child: Center(child: Text('Name', style: TextStyle(color: Colors.white))), // Text color white
                            ),
                            TableCell(
                              child: Center(child: Text('Attendance (%)', style: TextStyle(color: Colors.white))), // Text color white
                            ),
                          ],
                        ),
                        // Generate rows dynamically
                        for (int i = 1; i <= 30; i++)
                          TableRow(
                            children: [
                              TableCell(
                                child: Center(child: Text('$i', style: const TextStyle(color: Colors.white))), // Text color white
                              ),
                              TableCell(
                                child: Center(child: Text('Name $i', style: const TextStyle(color: Colors.white))), // Text color white
                              ),
                              TableCell(
                                child: Center(child: Text('${(i * 3) % 100}%', style: const TextStyle(color: Colors.white))), // Text color white
                              ),
                            ],
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
