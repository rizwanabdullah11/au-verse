import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:loginsignup/signup.dart';
import 'au_login.dart';

class LoginPage extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final GoogleSignIn googleSignIn = GoogleSignIn
    (
    clientId: '865009703378-hnaijjmim56kssaerfkarst2p65g4oa8.apps.googleusercontent.com',
  );

  LoginPage({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff102448),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            width: 350.0,
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
                Text(
                  'SIGN IN',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextField(
                    controller: emailController,
                    style: const TextStyle(color: Colors.blue, fontSize: 14),
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.blue),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    style: TextStyle(color: Colors.blue, fontSize: 14),
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.blue),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Implement login logic here
                    String email = emailController.text;
                    String password = passwordController.text;
                    _loginWithEmailAndPassword(context, email, password);
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Color(0xff052b6b),
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 30.0),
                  ),
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    // Navigate to the signup page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Signup()),
                    );
                  },
                  child: const Text(
                    'Don\'t have an account? Sign up',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Sign in with Google
                    signInWithGoogle().then((user) {
                      if (user != null) {
                        // Navigate to the home page upon successful login
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (
                              context) => const Home()), // Replace Home() with your home page
                        );
                      }
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    margin: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 20.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0,
                              3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/google.png', width: 24.0,
                              height: 24.0),
                        ),
                        SizedBox(width: 8.0),
                        // Adjust the space between the logo and the text
                        const Text(
                          'Login with Google',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xff052b6b),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _loginWithEmailAndPassword(BuildContext context, String email,
      String password) async {
    try {
      // Sign in with email and password using Firebase Authentication
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Navigate to the home page upon successful login
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (
            context) => const Home()), // Replace HomePage with your home page
      );
    } catch (e) {
      // Handle login errors
      print('Error signing in: $e');
      // Show error message to the user
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Failed to sign in. Please check your credentials.')),
      );
    }
  }

  Future<User?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        final UserCredential authResult = await _auth.signInWithCredential(credential);
        return authResult.user;
      }
      return null;
    } catch (error) {
      print("Google sign-in error: $error");
      return null;
    }
  }
}