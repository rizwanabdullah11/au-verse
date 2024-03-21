import 'package:flutter/material.dart';
import 'faculty_fprofile.dart';
import 'faculty_timetable.dart';
import 'faculty_attendancesheet.dart';
import 'faculty_upload.dart';

class FacultyLogin extends StatelessWidget {
  const FacultyLogin({Key? key}) : super(key: key);

  void onPressedButton1(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const FProfileActivity()),
    );
  }

  void onPressedButton2(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TimetableActivity()),
    );
  }

  void onPressedButton3(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Attendance_sheetActivity()),
    );
  }

  void onPressedButton4(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Marks_uploadActivity()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/faculty.jpg', // Change this to your background image path
              fit: BoxFit.cover,
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
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Welcome to the AU VERSE Faculty home',
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
                      minimumSize: const Size(200, 45),
                    ),
                    child: const Text(
                      'Faculty Profile',
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
                      minimumSize: const Size(200, 45),
                    ),
                    child: const Text(
                      'Timetable',
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
                      minimumSize: const Size(200, 45),
                    ),
                    child: const Text(
                      'Attendance Sheet',
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
                      minimumSize: const Size(200, 45),
                    ),
                    child: const Text(
                      'Marks upload',
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
