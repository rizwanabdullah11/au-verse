import 'package:flutter/material.dart';
import 'au_events.dart';
import 'au_transport.dart';
import 'au_sport.dart';
import 'au_query.dart';

class ThirdActivity extends StatelessWidget {
  const ThirdActivity({Key? key}) : super(key: key);

  void onPressedButton1(BuildContext context) {
    // Implement button 1 action here
  }

  void onPressedButton2(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const FourthActivity()),
    );
  }

  void onPressedButton3(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const FifthActivity()),
    );
  }

  void onPressedButton4(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SixthActivity()),
    );
  }

  void onPressedButton5(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SeventhActivity()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Positioned.fill(
            child: AspectRatio(
              aspectRatio: 1,
              child: Image(
                image: AssetImage('assets/aufront.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Container(
              width: 370.0,
              height: 450.0,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.8),
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3), // Add shadow color
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Welcome to the AU VERSE Home page',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  ElevatedButton(
                    onPressed: () => onPressedButton1(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Change text color
                      elevation: 5, // Increase button elevation
                      minimumSize: const Size(200, 45), // Adjust button size here
                    ),
                    child: const Text(
                      'University Map',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () => onPressedButton2(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Change text color
                      elevation: 5, // Increase button elevation
                      minimumSize: const Size(200, 45), // Adjust button size here
                    ),
                    child: const Text(
                      'Notifications',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () => onPressedButton3(context),
                    style: ElevatedButton.styleFrom(

                      backgroundColor: Colors.blue, // Change text color
                      elevation: 5, // Increase button elevation
                      minimumSize: const Size(200, 45), // Adjust button size here
                    ),
                    child: const Text(
                      'Transportation',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () => onPressedButton4(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Change text color
                      elevation: 5, // Increase button elevation
                      minimumSize: const Size(200, 45), // Adjust button size here
                    ),
                    child: const Text(
                      'Sports Event',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () => onPressedButton5(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Change button color// Change text color
                      elevation: 5, // Increase button elevation
                      minimumSize: const Size(200, 45), // Adjust button size here
                    ),
                    child: const Text(
                      'Student Query',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
