// import 'dart:html';

import 'package:flutter/material.dart';

import '../../dashpage/home_screen.dart';
import '../forget_password/forget_pwd_optn/forget_pwd_buttom_sheet.dart';
import '../signup/signup_screen.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
              child: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*-- section 1  start */
            Image(
                image: AssetImage('assets/images/login.jpg'),
                height: size.height * 0.2),
            Text(
              'Welcome Back,',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'Unlock flavor with a login.',
              style: TextStyle(fontSize: 18.0, color: Colors.black54),
            ),

            /*-- section 1  ends */

            /*-- section 2 [form] start */
            Form(
              child: Container(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person_outline_outlined,
                          ),
                          labelText: 'E-Mail',
                          labelStyle: TextStyle(),
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.fingerprint_outlined,
                          ),
                          suffixIcon: Icon(Icons.remove_red_eye_outlined),
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red)),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {
                              ForgetPwdButtomSheet.ForgetPwdBottomSheetPopup(
                                  context);
                            },
                            child: Text(
                              'Forget Password?',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                            )),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => HomeScreen())));
                            },
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(16),
                                backgroundColor: Colors.red,
                                foregroundColor: Colors.white),
                            child: Text('LOGIN')),
                      )
                    ]),
              ),
            ),
            /*-- section 2 [form] ends */

            /*-- section 3  starts */

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'OR',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: Image(
                          image: AssetImage('assets/images/googlelogo.png'),
                          width: 20.0,
                        ),
                        label: Text('Sign-in with google'),
                        style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.all(16),
                            side: BorderSide(color: Colors.black))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => SignUp())));
                      },
                      child: Text.rich(TextSpan(
                          text: "Don't have an Account? ",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                          children: [
                            TextSpan(
                              text: "Signup",
                              style: TextStyle(color: Colors.blue),
                            )
                          ])))
                ],
              ),
            )
            /*-- section 3 ends */
          ],
        ),
      ))),
    );
  }
}
