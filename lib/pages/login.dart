import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_waste/pages/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? identity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              'WASTE WISE',
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                  fontSize: 32, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 20),

            Text(
              'Hello!',
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                  fontSize: 24, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),

            Text(
              'Welcome back :)',
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                  fontSize: 16, fontWeight: FontWeight.bold),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle: GoogleFonts.montserrat(), // Applying GoogleFonts to labelStyle
                ),
                style: GoogleFonts.montserrat(), // Applying GoogleFonts to the text input
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: GoogleFonts.montserrat(), // Applying GoogleFonts to labelStyle
                ),
                style: GoogleFonts.montserrat(), // Applying GoogleFonts to the text input
              ),
            ),

            SizedBox(height: 10),

            Text(
              'Login as: ',
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                  fontSize: 16, fontWeight: FontWeight.bold),
            ),

            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 150,
                      child: RadioListTile(
                        title: Text("User", style: GoogleFonts.montserrat(
                            fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        value: "user",
                        groupValue: identity,
                        onChanged: (value){
                          setState(() {
                            identity = value.toString();
                          });
                        },
                      )
                  ),
                  Container(
                      width: 150,
                      child: RadioListTile(
                        title: Text("Driver", style: GoogleFonts.montserrat(
                            fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        value: "driver",
                        groupValue: identity,
                        onChanged: (value){
                          setState(() {
                            identity = value.toString();
                          });
                        },
                      )
                  ),

                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Implement Login logic here
                String username = usernameController.text;
                String password = passwordController.text;
                if (username == 'test' && password == '123456789') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Placeholder()),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Login Failed'),
                        content: const Text('Invalid username or password.'),
                        actions: [
                          TextButton(
                            child: const Text('OK'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                padding: const EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),

              child:
              Text(
                "Login",
                style: GoogleFonts.montserrat(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'New user?',
                  style: GoogleFonts.montserrat(
                    fontSize: 16.0,
                ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                     context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
                  child: Text(
                    ' Register now',
                      style: GoogleFonts.montserrat(
                        fontSize: 16.0,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}