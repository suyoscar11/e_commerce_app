// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'dart:math';

class Homepages extends StatefulWidget {
  @override
  State<Homepages> createState() => _HomepagesState();
}

class _HomepagesState extends State<Homepages> {
  int letmedecide = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help me decide'),
      ),
      backgroundColor: Colors.yellowAccent.shade100,
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Expanded(
              child: Image.asset(
                'assets/images/child$letmedecide.jpg',
                fit: BoxFit.cover,
                height: 400,
                width: 100,
              ),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  letmedecide = Random().nextInt(5) + 1;
                });
              },
              child: const Text(
                'Help Me Decide',
                style: TextStyle(fontSize: 28),
              ))
        ],
      ),
    );
  }
}
