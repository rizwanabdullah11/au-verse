import 'package:flutter/material.dart';
import 'student_profile.dart';
import 'stud_attendance.dart';
import 'student_grade.dart';
import 'student_fee.dart';
import 'student_course.dart';

class StudentLogin extends StatelessWidget {
  const StudentLogin({Key? key}) : super(key: key);

  void onPressedButton1(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ProfileActivity()),
    );
  }

  void onPressedButton2(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AttendanceActivity()),
    );
  }

  void onPressedButton3(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const GradeActivity()),
    );
  }

  void onPressedButton4(BuildContext context) {
    // Implement button 4 action here
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const FeeActivity()),
    );
  }

  void onPressedButton5(BuildContext context) {
    // Implement button 5 action here
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CourseActivity()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/student.jpg', // Change this to your background image path
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Container(
              width: 370.0,
              height: 450.0,
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
                    'Welcome to the AU VERSE Student home',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,

                    ),
                  ),
                  SizedBox(height: 30.0),
                  ElevatedButton(
                    onPressed: () => onPressedButton1(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: const Size(200, 45), // Adjust button size here
                    ),
                    child: const Text(
                      'Student Profile',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () => onPressedButton2(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: const Size(200, 45), // Adjust button size here
                    ),
                    child: const Text(
                      'Attendance',
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
                      'Grade',
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
                      backgroundColor: Colors.blue,
                      minimumSize: const Size(200, 45), // Adjust button size here
                    ),
                    child: const Text(
                      'Fee System',
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
                      backgroundColor: Colors.blue,
                      minimumSize: const Size(200, 45), // Adjust button size here
                    ),
                    child: const Text(
                      'Registration',
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
