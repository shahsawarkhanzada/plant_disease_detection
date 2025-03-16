import 'package:flutter/material.dart';

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
              'Welcome to Realtime\nPeach Plant Disease\nand Diagnosis System',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff6A4DFF))),
                  child: const Text('Login',
                      style: TextStyle(color: Colors.white)),
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
              height: 25,
            ),
            Row(
              children: [
                const Text(
                  "Doesn't have an account?",
                  style: TextStyle(fontSize: 14),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Register Here',
                      style: TextStyle(fontSize: 14, color: Color(0xff6A4DFF)),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
