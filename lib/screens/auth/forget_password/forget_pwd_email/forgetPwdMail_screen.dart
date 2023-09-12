import 'package:flutter/material.dart';

import '../otp_screen/otp_screen.dart';

class ForgetPwdMailScreen extends StatelessWidget {
  const ForgetPwdMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(30),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(height: 10),
            Image(
              image: AssetImage('assets/images/forgetpwd.jpg'),
              height: size.height * 0.4,
            ),
            Text(
              'Forget Password',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Select one of the optioins given below to reset your password",
              style: TextStyle(color: Colors.black87, fontSize: 17),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            Form(
                child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.mail_outline_rounded,
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
                  height: 30,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OtpScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(16),
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white),
                      child: Text('Next')),
                )
              ],
            ))
          ]),
        ),
      ),
    );
  }
}
