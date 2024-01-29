// sign_in_page.dart

import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController regNoController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // ... (remaining code for SignInPage)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
        backgroundColor: Colors.green, // Change the app bar color
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: regNoController,
              decoration: InputDecoration(labelText: 'Registration Number'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            // ... (existing code for text fields)
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                String regNo = regNoController.text;
                String password = passwordController.text;

                // Print the values for now, replace this with your logic
                print('Registration Number: $regNo');
                print('Password: $password');

                // ... (existing code for button)
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // Change the button color
              ),
              child: Text(
                'Sign In',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
