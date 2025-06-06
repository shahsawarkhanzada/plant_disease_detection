import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:plant_disease_detection/view/third_screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  File? image;

  final picker = ImagePicker();

  Future getgalleryImage() async {
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedImage != null) {
        image = File(pickedImage.path);
      } else {
        print('No Image selected');
      }
    });
  }

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Weather Update',
              style: TextStyle(fontSize: 26),
            ),
            const Text(
              '21C - 31C',
              style: TextStyle(fontSize: 18, color: Color(0xff6A4DFF)),
            ),
            const SizedBox(
              height: 60,
            ),
            const Center(
                child: Text(
              'Details about Peach',
              style: TextStyle(fontSize: 26),
            )),
            SizedBox(
                height: 175,
                width: 200,
                child: image != null
                    ? ClipRRect(
                        child: Image.file(
                          image!.absolute,
                          fit: BoxFit.cover,
                        ),
                      )
                    : const Center(child: Text('Please select an image'))),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ThirdScreen()));
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff6A4DFF))),
                child: const Text(
                  'Your Crop',
                  style: TextStyle(color: Colors.white),
                )),
            const SizedBox(
              width: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  getgalleryImage();
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff6A4DFF))),
                child: const Text('Detect/Diagnose',
                    style: TextStyle(color: Colors.white))),
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff6A4DFF))),
                child: const Text('Analysis',
                    style: TextStyle(color: Colors.white)))
          ],
        ),
      ),
    );
  }
}
