import 'package:flutter/material.dart';
import 'package:plant_disease_detection/view/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/images/peaches2.jpg'),
              height: 200,
              width: 200,
            ),
            const Text(
              'Welcome to\nRealtime Peach Plant Disease\nand Diagnosis System',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondScreen()));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff6A4DFF))),
                  child: const Text('Login',
                      style: TextStyle(color: Colors.white)),
                ),
                const SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xff6A4DFF))),
                    child: const Text(
                      'SignUp',
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Doesn't have an account?",
                  style: TextStyle(fontSize: 12),
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(' Register here',
                      style: TextStyle(fontSize: 12, color: Color(0xff6A4DFF))),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
