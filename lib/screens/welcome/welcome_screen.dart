import 'package:flutter/material.dart';
import 'package:food_app_onboard/screens/auth/login/login_screen.dart';
import 'package:food_app_onboard/screens/auth/signup/signup_screen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage("assets/images/welcomescreen.jpg"),
              height: height * 0.5,
            ),
            Column(
              children: [
                Text(
                  'Tasty Bites',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "Discover Delicious Food from Around the World. Explore a diverse range of mouthwatering cuisines",
                    style: TextStyle(fontSize: 18.0, color: Colors.black54),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignIn()));
                    },
                    child: Text(
                      'LOGIN',
                    ),
                    style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.all(12.0),
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(),
                        side: BorderSide(color: Colors.black),
                        textStyle: TextStyle(fontSize: 16.0)),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Text(
                      'SIGNUP',
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(12.0),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.red.shade400,
                        shape: RoundedRectangleBorder(),
                        // side: BorderSide(color: Colors.black),
                        textStyle: TextStyle(fontSize: 16.0),
                        elevation: 0),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
