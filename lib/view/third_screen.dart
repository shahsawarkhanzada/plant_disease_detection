import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text(
            'Weather Update',
            style: TextStyle(fontSize: 26),
          ),
          const Text(
            '21C - 31C',
            style: TextStyle(fontSize: 20),
          ),
          const Image(image: AssetImage('assets/images/peach.png')),
          const SizedBox(
            height: 12,
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Diagnosis'))
        ],
      ),
    );
  }
}
