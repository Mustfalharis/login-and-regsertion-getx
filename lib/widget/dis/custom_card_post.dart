


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CustomCardPost extends StatelessWidget {
  const CustomCardPost({Key? key, required this.userId, required this.id, required this.title, required this.completed,}) : super(key: key);
  final int userId;
  final int id;
  final String title;
  final bool completed;

  @override
  Widget build(BuildContext context) {
    return    Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      height: 300,
      width: double.infinity,
      color: Colors.grey,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(userId.toString()),
            Text(id.toString()),
            Text(title.toString()),
            Text(completed.toString()),

          ],
        ),
      ),
    );
  }
}
