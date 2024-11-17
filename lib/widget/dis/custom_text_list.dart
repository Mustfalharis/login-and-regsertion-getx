


import 'package:flutter/material.dart';
class CustomTextList extends StatelessWidget {
  const CustomTextList({Key? key, required this.title, required this.isActive}) : super(key: key);
   final String title;
   final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive==true ?
    Container(
      alignment: Alignment.center,
      height: 40,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blueAccent,
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    )
    :
    Text(
      title,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
