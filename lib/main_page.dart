import 'package:flutter/material.dart';
import 'package:homework_3/login_page.dart';
import 'registration_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/image.png',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 200),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFFF27C38),
                onPrimary: Colors.amber,
                minimumSize: Size(300, 60),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text(
                'LOGIN',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "If you don't have an account",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFFF27C38),
                onPrimary: Colors.amber,
                minimumSize: Size(200, 40),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistrationPage()),
                );
              },
              child: Text(
                'SIGN UP',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.sentiment_satisfied_alt,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(width: 10),
                  const Text(
                    'We are glad you are here',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
