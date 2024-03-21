import 'package:flutter/material.dart';

class FifthActivity extends StatelessWidget {
  const FifthActivity({Key? key}) : super(key: key);

  void onPressedButton1(BuildContext context) {
    // Implement button 1 action here
  }

  void onPressedButton2(BuildContext context) {
    // Implement button 2 action here
    // Navigate to FourthActivity when "Events/ Notification" button is pressed
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const FifthActivity()),
    );
  }

  void onPressedButton3(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const FifthActivity()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          // Background image
          const Positioned.fill(
            child: Image(
              image: AssetImage('assets/aubuses.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          // Main content
          Center(
            child: Container(
              width: 340.0,
              height: 400.0,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.8), // Add opacity to the container background color
                borderRadius: BorderRadius.circular(20.0), // Add border radius for rounded corners
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
                    'Welcome to the AU VERSE transportation',
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
                      backgroundColor: Colors.blue,
                      minimumSize: const Size(200, 45), // Adjust button size here
                    ),
                    child: const Text(
                      'Student Info',
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
                      backgroundColor: Colors.blue,
                      minimumSize: const Size(200, 45), // Adjust button size here
                    ),
                    child: const Text(
                      'Bus Schedule',
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
                      backgroundColor: Colors.blue,
                      minimumSize: const Size(200, 45), // Adjust button size here
                    ),
                    child: const Text(
                      'Employee Info',
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
