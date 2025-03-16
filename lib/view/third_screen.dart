import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
           Text(
            'Weather Update',
            style: TextStyle(fontSize: 26),
          ),
           Text(
            '21C - 31C',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
