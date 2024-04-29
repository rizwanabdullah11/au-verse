import 'package:flutter/material.dart';

class Schedule_buses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black.withOpacity(0.8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20.0),
              Container(
                height: 70,
                padding: const EdgeInsets.all(16),
                child: const Text(
                  'Buses Schedule',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 5.0),
              BusRouteCard(
                busNumber: 'BUS-01',
                date: '10 Sep 2023',
                source: 'E-11 Markaz',
                destination: 'AU Campus',
                startTime: '6:30 AM',
                endTime: '7:40 PM(approx)',
              ),
              SizedBox(height: 5),
              BusRouteCard(
                busNumber: 'BUS-02',
                date: '10 Sep 2023',
                source: 'Sixth Road  ',
                destination: 'AU Campus',
                startTime: '6:30 AM',
                endTime: '7:40 PM(approx)',
              ),
              SizedBox(height: 5),
              BusRouteCard(
                busNumber: 'BUS-03',
                date: '10 Sep 2023',
                source: 'Saddar   ',
                destination: 'AU Campus',
                startTime: '6:30 AM',
                endTime: '7:40 PM(approx)',
              ),
              SizedBox(height: 5),
              BusRouteCard(
                busNumber: 'BUS-04',
                date: '10 Sep 2023',
                source: 'G-5 Markaz',
                destination: 'AU Campus',
                startTime: '6:30 AM',
                endTime: '7:40 PM(approx)',
              ),
              SizedBox(height: 5),
              BusRouteCard(
                busNumber: 'BUS-05',
                date: '10 Sep 2023',
                source: 'G-13 Markaz',
                destination: 'AU Campus',
                startTime: '6:30 AM',
                endTime: '7:40 PM(approx)',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BusRouteCard extends StatelessWidget {
  final String busNumber;
  final String date;
  final String source;
  final String destination;
  final String startTime;
  final String endTime;

  BusRouteCard({
    required this.busNumber,
    required this.date,
    required this.source,
    required this.destination,
    required this.startTime,
    required this.endTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff102448), // Set background color to black
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 10), // Added margin for spacing
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                busNumber,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                date,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                source,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              Image.asset(
                'assets/bus.png',
                width: MediaQuery.of(context).size.width*0.20,
                height: MediaQuery.of(context).size.height*0.10,
              ),
              Text(
                destination,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.access_time,
                    color: Colors.white,
                  ),
                  SizedBox(width: 4),
                  Text(
                    'Start - $startTime',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.access_time,
                    color: Colors.white,
                  ),
                  SizedBox(width: 4),
                  Text(
                    'End - $endTime',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
