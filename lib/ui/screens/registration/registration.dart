import 'package:flutter/material.dart';
import '../../../theme/theme.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: AppColors.white,
      appBar: appBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20), // Space from the app bar
              const Text(
                'Create an Account to get started',
                style: AppTextStyles.heading_2,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                  height: 20), // Space between title and input fields

              // Name Input Field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16), // Space between input fields

              // Email Input Field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16), // Space between input fields

              // Gender Dropdown
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Gender',
                  border: OutlineInputBorder(),
                ),
                items: <String>['Male', 'Female', 'Other']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  // Handle gender selection
                },
              ),
              const SizedBox(height: 16), // Space between input fields

              // Password Input Field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true, // Hide password input
              ),
              const SizedBox(height: 20), // Space before the button

              // Register Button
              ElevatedButton(
                onPressed: () {},
                child: SizedBox(
                  width: double.infinity, // Width of the button
                  height: 50, // Height of the button
                  child: Center(
                    child: Text(
                      'Register',
                      style: AppTextStyles.button,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        'ChatApp',
        style: TextStyle(color: AppColors.active),
      ),
      backgroundColor: AppColors.white,
    );
  }
}
