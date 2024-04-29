import 'package:flutter/material.dart';

class TimetableActivity extends StatelessWidget {
  const TimetableActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black.withOpacity(0.8),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20.0),
              Container(
                padding: const EdgeInsets.all(8.0),
                color: Color(0xff102448),
                height: 70,
                child: const Center(
                  child: Text(
                    'Faculty TimeTable',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              _buildRow('Faculty ID:', '00000'),
              _buildRow('Name:', 'Romana Maroof'),
              _buildRow('Department:', 'Computer Science'),
              const SizedBox(height: 20.0),
              _buildTable(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          SizedBox(
            width: 120.0,
            child: Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: value,
                hintStyle: TextStyle(color: Colors.white70),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTable() {
    return Table(
      border: TableBorder.all(color: Color(0xff102448)),
      columnWidths: const {
        0: FlexColumnWidth(0.5),
        1: FlexColumnWidth(2),
        2: FlexColumnWidth(1),
        3: FlexColumnWidth(1),
        4: FlexColumnWidth(1),
        5: FlexColumnWidth(1),
      },
      children: [
        _buildTableRow('Sr No.', 'SUBJECT NAME', 'Day', 'Time From', 'Time To', 'Credit HRS', isHeader: true),
        _buildTableRow('1', 'Programming Fundamental', 'Monday', '10:00', '10:50', '3'),
        _buildTableRow('2', 'Programming Fundamental', 'Thursday', '8:00', '8:50', '3'),
        _buildTableRow('3', 'Programming Fundamental', 'Friday', '14:00', '14:50', '3'),
        _buildTableRow('4', 'Programming Fundamental Lab', 'Tuesday', '8:00', '10:50', '1'),
        _buildTableRow('5', 'Mobile Computing Lab', 'Wednesday', '8:00', '10:50', '1'),
        _buildTableRow('6', 'Artificial Intelligence', 'Friday', '10:00', '10:50', '2'),
        _buildTableRow('7', 'Artificial Intelligence', 'Friday', '15:00', '15:50', '2'),
      ],
    );
  }

  TableRow _buildTableRow(String col1, String col2, String col3, String col4, String col5, String col6, {bool isHeader = false}) {
    return TableRow(
      children: [
        _buildTableCell(col1, isHeader: isHeader),
        _buildTableCell(col2, isHeader: isHeader),
        _buildTableCell(col3, isHeader: isHeader),
        _buildTableCell(col4, isHeader: isHeader),
        _buildTableCell(col5, isHeader: isHeader),
        _buildTableCell(col6, isHeader: isHeader),
      ],
    );
  }

  Widget _buildTableCell(String value, {bool isHeader = false}) {
    return TableCell(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        alignment: Alignment.center,
        child: Text(
          value,
          style: TextStyle(
            color: isHeader ? Colors.white : Colors.white,
            fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
            fontSize: isHeader ? 16.0 : 14.0,
          ),
        ),
      ),
    );
  }
}
