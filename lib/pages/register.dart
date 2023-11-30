import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String? identity; // To differentiate between user and driver

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'REGISTER',
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle: GoogleFonts.montserrat(),
                ),
                style: GoogleFonts.montserrat(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: GoogleFonts.montserrat(),
                ),
                style: GoogleFonts.montserrat(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: GoogleFonts.montserrat(),
                ),
                style: GoogleFonts.montserrat(),
                obscureText: true,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Register as: ',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 10),

                Radio(
                  value: 'user',
                  groupValue: identity,
                  onChanged: (value) {
                    setState(() {
                      identity = value.toString();
                    });
                  },
                ),

                Text(
                  'User',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold
                  ),
                ),
                Radio(
                  value: 'driver',
                  groupValue: identity,
                  onChanged: (value) {
                    setState(() {
                      identity = value.toString();
                    });
                  },
                ),
                Text(
                  'Driver',
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                // Implement registration logic based on identity here
                String username = usernameController.text;
                String email = emailController.text;
                String password = passwordController.text;
                String? selectedIdentity = identity;

                // Your registration logic goes here
                // Determine if user or driver is registering based on selectedIdentity

                // For now, just print the entered details and identity
                print('Username: $username');
                print('Email: $email');
                print('Password: $password');
                print('Identity: $selectedIdentity');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // Set button color to green
                padding: const EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Text(
                "Register",
                style: GoogleFonts.montserrat(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}