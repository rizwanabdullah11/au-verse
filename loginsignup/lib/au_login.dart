import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'student_login.dart';
import 'faculty_login.dart';
import 'au_home.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    initializeVideo();
  }

  Future<void> initializeVideo() async {
    _controller = VideoPlayerController.asset(
      'assets/auvideo.mp4',
    );
    try {
      await _controller.initialize();
      setState(() {});
      _controller.setLooping(true);
      _controller.play();
    } catch (e) {
      print("Error initializing video: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _controller.value.isInitialized
            ? SizedBox.expand(
          child: FittedBox(
            fit: BoxFit.cover,
            child: SizedBox(
              width: _controller.value.size?.width ?? 0,
              height: _controller.value.size?.height ?? 0,
              child: VideoPlayer(_controller),
            ),
          ),
        )
            : Container(), // Placeholder for video if not initialized
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Container(
              width: 370.0,
              height: 400.0,
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
                    'Everything You need to know starts from here.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => StudentLogin()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff102448),
                      minimumSize: const Size(200, 45),
                    ),
                    child: const Text(
                      'Login as Student',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FacultyLogin()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff102448),
                      minimumSize: const Size(200, 45),
                    ),
                    child: const Text(
                      'Login as Faculty',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 25.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThirdActivity()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff102448),
                      minimumSize: const Size(200, 45),
                    ),
                    child: const Text(
                      'Home',
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
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
