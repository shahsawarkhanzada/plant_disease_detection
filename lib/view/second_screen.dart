import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Weather Update',
            style: TextStyle(fontSize: 26),
          ),
          const Text(
            '21C - 31C',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 25,
          ),
          const Center(
              child: Text(
            'Details about Peach',
            style: TextStyle(fontSize: 26),
          )),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff6A4DFF))),
                  child: const Text('Your Crop')),
              ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff6A4DFF))),
                  child: const Text('Detect/Diagnose')),
              ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff6A4DFF))),
                  child: const Text('Analysis'))
            ],
          )
        ],
      ),
    );
  }
}
