import 'package:flutter/material.dart';

class FeeActivity extends StatelessWidget {
  const FeeActivity({Key? key}) : super(key: key);

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
              _buildText('Registration_ID: ', fontSize: 16, fontWeight: FontWeight.bold),
              _buildText('Name: ', fontSize: 16, fontWeight: FontWeight.bold),
              _buildText('Class Name: ', fontSize: 16, fontWeight: FontWeight.bold),
              _buildText('Due Date: ', fontSize: 16),
              _buildText('Bank Account Information:', fontSize: 18, fontWeight: FontWeight.bold),
              _buildText('Habib Metro Bank', fontSize: 16),
              _buildText('AC NO.', fontSize: 16),
              _buildText('AL-Habib Bank', fontSize: 16),
              _buildText('AC NO.', fontSize: 16),
              _buildText('1-Link ID: []', fontSize: 16),
              const SizedBox(height: 10),
              Table(
                border: TableBorder.all(color: Color(0xff102448)),
                columnWidths: const {
                  0: FlexColumnWidth(1),
                  1: FlexColumnWidth(0.5),
                },
                children: [
                  _buildTableRow('Description', 'Amount (PKR)', fontSize: 16, fontWeight: FontWeight.bold),
                  _buildTableRow('Miscellaneous Fee', '2,500'),
                  _buildTableRow('Tuition Fee', '93,330'),
                  _buildTableRow('Total', '95,830', fontSize: 16, fontWeight: FontWeight.bold),
                ],
              ),
              const SizedBox(height: 10),
              _buildText(
                'NOTE\n'
                    '1.Fee can be deposited at any branch (in any city) of Habib Metro Bank Ltd and Bank AL-Habib Ltd.\n'
                    '2.To facilitate the students, fee can be deposited by using Mobile App, ATM, Internet Banking through 1-Link or within the University premises at Bank Al-Habib Branch (IAA Building).\n'
                    '3.Bank to Charge late fee fine @ Rs.200/- per day after due date. Late fee fine will not be waived off.\n'
                    '4.Installments/Change of date would be allowed once in semester before due date.\n'
                    '5.Partial payment is not allowed while paying your fee online.\n'
                    '*This is system-generated fee bill & verifiable through AU account system.',
                fontSize: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildText(String text, {double? fontSize, FontWeight? fontWeight}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: Colors.white,
        ),
      ),
    );
  }

  TableRow _buildTableRow(String description, String amount, {double? fontSize, FontWeight? fontWeight}) {
    return TableRow(
      children: [
        TableCell(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: _buildText(description, fontSize: fontSize, fontWeight: fontWeight),
          ),
        ),
        TableCell(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: _buildText(amount, fontSize: fontSize),
          ),
        ),
      ],
    );
  }
}
