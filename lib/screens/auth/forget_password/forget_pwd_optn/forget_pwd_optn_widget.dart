import 'package:flutter/material.dart';

class ForgetPasswordOptnWidget extends StatelessWidget {
  const ForgetPasswordOptnWidget({
    required this.optnIcon,
    required this.title,
    required this.subtitle,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final IconData optnIcon;
  final String title, subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Icon(
              optnIcon,
              size: 60.0,
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.black54, fontSize: 15),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
