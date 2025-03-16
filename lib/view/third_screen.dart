import 'package:flutter/material.dart';
import 'package:plant_disease_detection/view/second_screen.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  void _onMenuItemSelected(String value) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SecondScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton<String>(
            onSelected: _onMenuItemSelected,
            itemBuilder: (BuildContext context) => [
              const PopupMenuItem(
                value: "Item 1",
                child: Text("Your Crop"),
              ),
              const PopupMenuItem(
                value: "Item 2",
                child: Text("Detect/Diagnose"),
              ),
              const PopupMenuItem(
                value: "Item 3",
                child: Text("Analysis"),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Weather Update',
              style: TextStyle(fontSize: 26),
            ),
          ),
          const Text(
            '21C - 31C',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 45,
          ),
          const Image(image: AssetImage('assets/images/peach.png')),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xff6A4DFF))),
              child: const Text(
                'Click to Diagnose',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
