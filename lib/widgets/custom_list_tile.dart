import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({Key? key, required this.title, required this.imagePath, required this.onTap}) : super(key: key);
  final String title;
  final String imagePath;
  final VoidCallback ?onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          leading: SizedBox(
            width: 50,
            height: 50,
            child: imagePath==""?null: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              color: Colors.white,
            ),
          ),
          title: Text(
            title,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w600),
          ),
        ),
        const Divider(
          color: Colors.white,
        ),
      ],
    );
  }
}
