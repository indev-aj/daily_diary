import 'package:flutter/material.dart';

Widget customCard(String subject, String body) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: ListTile(
      title: Text(
        subject,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(body),
    ),
  );
}
