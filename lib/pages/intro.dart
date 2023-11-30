import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_waste/pages/login.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [

            // logo
            Padding(
              padding: const EdgeInsets.only(
                left: 75.0,
                right: 75.0,
                top: 100.0,
                bottom: 75.0,
              ),
              child: Image.network('https://i.pinimg.com/564x/b5/b0/86/b5b086106833e56ddd0d3edcb7b1db80.jpg'),
            ),

            // description
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Text(
                'WASTE WISE',
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                    fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),

            // subtitle
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'A smart waste collection system for a cleaner, efficient future.',
                textAlign: TextAlign.center,
                style: GoogleFonts.raleway(
                  fontSize: 20),
              ),
            ),

            const SizedBox(height: 24),

            const Spacer(),

            // get started button
            GestureDetector(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginPage();
                    },
                  ),
                ),
              child: Container(
                padding: const EdgeInsets.all(32),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.green,
                ),
                child: Text(
                  "Get Started",
                  style: GoogleFonts.montserrat(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,),
                ),
              ),
            ),

            const Spacer(),
          ],
        ),
      ),
    );
  }
}