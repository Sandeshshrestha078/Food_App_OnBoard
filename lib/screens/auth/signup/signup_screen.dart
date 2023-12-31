import 'package:flutter/material.dart';
// import 'package:get/get.dart';

import '../login/login_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                /* section 1[header] starts*/
                Image(
                  image: AssetImage('assets/images/signup.jpg'),
                  height: size.height * 0.2,
                ),
                Text('Get On Board!',
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
                Text("Satisfy cravings, create tasty moments.",
                    style: TextStyle(fontSize: 18.0, color: Colors.black54)),

                /* section 1[header] starts*/

                Form(
                  child: Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person_outline_outlined,
                            ),
                            labelText: 'Full Name',
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
                              Icons.email_outlined,
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
                              Icons.phone_android_rounded,
                            ),
                            labelText: 'Phone No',
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
                        SizedBox(
                          height: 15.0,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.all(16),
                                  backgroundColor: Colors.red,
                                  foregroundColor: Colors.white),
                              child: Text('SIGNUP')),
                        ),
                      ],
                    ),
                  ),
                ),
                /* Section 2 [form] ends*/

                /* Section 3[footer] starts*/
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
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => SignIn())));
                          },
                          child: Text.rich(TextSpan(
                              text: "Already have an account? ",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                              children: [
                                TextSpan(
                                  text: "LOGIN",
                                  style: TextStyle(color: Colors.blue),
                                )
                              ])))
                    ],
                  ),
                )
                /* Section 3[footer] ends*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
