import 'package:flutter/material.dart';
import '../../../theme/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../shared/ui/components/custom_input_field.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: AppColors.white,
      appBar: appBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20), // Space from the app bar
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: 400, // Set the maximum width
                    ),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: const Text(
                        'Create an Account to get started',
                        style: AppTextStyles.heading_2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),

                  const SizedBox(
                      height: 32), // Space between title and input fields

                  // Name Input Field
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: 400, // Set the maximum width
                    ),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      // Set the desired width
                      child: CustomInputField(
                        label: 'Name',
                      ),
                    ),
                  ),

                  const SizedBox(height: 12), // Space between input fields

                  // Email Input Field
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: 400, // Set the maximum width
                    ),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: CustomInputField(
                        label: 'Email',
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                  ),

                  const SizedBox(height: 12), // Space between input fields

                  // Gender Dropdown
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: 400, // Set the maximum width
                    ),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: CustomInputField(
                        label: 'Gender',
                        dropdownItems: ['Male', 'Female', 'Other'],
                        selectedValue: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value;
                          });
                        },
                      ),
                    ),
                  ),

                  const SizedBox(height: 12), // Space between input fields

                  // Password Input Field with Show/Hide functionality
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: 400, // Set the maximum width
                    ),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: CustomInputField(
                        label: 'Password',
                        obscureText: true, // Enables password visibility toggle
                      ),
                    ),
                  ),

                  const SizedBox(height: 64), // Space before the button

                  // Register Button
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: 400, // Set the maximum width
                    ),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Registration()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: Center(
                            child: Text(
                              'Register',
                              style: AppTextStyles.button,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false, // Removes the default back button
      title: const Text(
        'ChatApp',
        style: TextStyle(color: AppColors.active),
      ),
      backgroundColor: AppColors.white,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back_icon.svg',
          width: 24,
          height: 24,
        ),
        onPressed: () {
          Navigator.pop(context); // Navigate back to the previous screen
        },
      ),
    );
  }
}
