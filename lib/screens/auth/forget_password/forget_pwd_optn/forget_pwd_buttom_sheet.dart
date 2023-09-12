import 'package:flutter/material.dart';

import '../forget_pwd_email/forgetPwdMail_screen.dart';
import 'forget_pwd_optn_widget.dart';

class ForgetPwdButtomSheet {
  static Future<dynamic> ForgetPwdBottomSheetPopup(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: ((context) {
          return Container(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Make Selection!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Select one of the optioins given below to reset your password",
                  style: TextStyle(color: Colors.black54, fontSize: 17),
                ),
                SizedBox(
                  height: 30,
                ),
                ForgetPasswordOptnWidget(
                  optnIcon: Icons.mark_email_read_outlined,
                  title: "E-Mail",
                  subtitle: "Reset via Mail Verification",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => ForgetPwdMailScreen())));
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                ForgetPasswordOptnWidget(
                    optnIcon: Icons.phone_android_outlined,
                    title: "Phone No",
                    subtitle: "Reset via Mail Verification",
                    onTap: () {})
              ],
            ),
          );
        }));
  }
}
