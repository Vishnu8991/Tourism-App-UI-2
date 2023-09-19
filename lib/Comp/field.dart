import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  const Field({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Colors.grey[200],
        filled: true,
        suffixIcon: Icon(Icons.search),
        hintText: "Search"
      ),
    );
  }
}