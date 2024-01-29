// create_account_page.dart

import 'package:flutter/material.dart';
import 'sign_in_page.dart';

class CreateAccountPage extends StatefulWidget {
  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  // ... (remaining code for CreateAccountPage)
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController regNoController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Account'),
        backgroundColor: Colors.blue, // Change the app bar color
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email ID'),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(labelText: 'Phone Number'),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: regNoController,
              decoration: InputDecoration(labelText: 'Registration Number'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: dobController,
              decoration: InputDecoration(labelText: 'Date of Birth'),
              keyboardType: TextInputType.datetime,
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: confirmPasswordController,
              decoration: InputDecoration(labelText: 'Confirm Password'),
              obscureText: true,
            ),
            // ... (existing code for text fields)
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                String name = nameController.text;
                String email = emailController.text;
                String phone = phoneController.text;
                String regNo = regNoController.text;
                String dob = dobController.text;
                String password = passwordController.text;
                String confirmPassword = confirmPasswordController.text;

                // Print the values for now, replace this with your logic
                print('Name: $name');
                print('Email ID: $email');
                print('Phone Number: $phone');
                print('Registration Number: $regNo');
                print('Date of Birth: $dob');
                print('Password: $password');
                print('Confirm Password: $confirmPassword');

                // Redirect to Sign In page after successful account creation
                Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => SignInPage(),
                ),
                );
                // ... (existing code for button)
              },

              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Change the button color
              ),
              child: Text(
                'Create Account',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
