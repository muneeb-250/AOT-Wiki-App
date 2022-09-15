import 'package:aot_characters_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontFamily: 'BerkshireSwash',
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(1, 3),
                        color: Colors.black38,
                        blurRadius: 16)
                  ]),
              height: 240,
              width: 240,
              child: Image.asset('assets/images/welcome.png'),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              ),
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0.0),
                padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 48, vertical: 20)),
                backgroundColor:
                    MaterialStateProperty.all(Colors.yellowAccent.shade700),
              ),
              child: const Text(
                'Let\'s Go!',
                style: TextStyle(fontSize: 24, fontFamily: 'BerkshireSwash'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
