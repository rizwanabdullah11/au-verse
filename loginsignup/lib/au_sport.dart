import 'package:flutter/material.dart';

class Event {
  final String title;
  final DateTime date;
  final String description;

  Event({
    required this.title,
    required this.date,
    required this.description,
  });
}

class SixthActivity extends StatelessWidget {
  const SixthActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: EventsScreen(),
    );
  }
}

class EventsScreen extends StatefulWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  _EventsScreenState createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  List<Event> events = [
    Event(
      title: 'University Day Celebration',
      date: DateTime(2023, 12, 15),
      description: 'Join us for a day of celebration!',
    ),
    Event(
      title: 'Guest Lecture on AI',
      date: DateTime(2023, 12, 20),
      description: 'Learn about the latest trends in Artificial Intelligence.',
    ),
    Event(
      title: 'Workshop on Flutter',
      date: DateTime(2023, 12, 25),
      description: 'Hands-on experience with Flutter development.',
    ),
    Event(
      title: 'Career Fair',
      date: DateTime(2023, 12, 30),
      description: 'Explore career opportunities with top companies.',
    ),
    Event(
      title: 'Workshop on Flutter',
      date: DateTime(2023, 12, 25),
      description: 'Hands-on experience with Flutter development.',
    ),
    Event(
      title: 'Career Fair',
      date: DateTime(2023, 12, 30),
      description: 'Explore career opportunities with top companies.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black.withOpacity(0.8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20.0),
            Container(
              height: 100,
              padding: const EdgeInsets.all(16),
              child: const Text(
                'Sports News',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: events.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4), // Adjust margin for spacing
                    color: Color(0xff102448),
                    child: ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            events[index].title,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            events[index].description,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      subtitle: Text(
                        '${events[index].date.day}/${events[index].date.month}/${events[index].date.year}',
                        style: const TextStyle(fontSize: 12, color: Colors.white),
                      ),
                      onTap: () {
                        // Navigate to event details screen or show a dialog
                        // with more details about the selected event.
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddEventDialog(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showAddEventDialog(BuildContext context) {
    // Implementation of the add event dialog
    // ...
  }
}
