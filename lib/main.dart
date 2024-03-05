import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Hello World'),
              Text('Hello Hello'),
              TextField(
                decoration: InputDecoration(hintText: 'Username'),
              ),
              TextField(
                decoration: InputDecoration(hintText: 'Password'),
                obscureText: true,
              )
            ],
          ),
        ),
      ),
    ),
  );
}
