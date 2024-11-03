import 'package:chat_app_frontend_flutter/ui/screens/registration/registration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../theme/theme.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context)
                .size
                .height, // Ensures full screen height
            padding: const EdgeInsets.symmetric(
              vertical: 54.0,
              horizontal: 24.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(), // Pushes content towards the center
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        'assets/images/landing-image.svg',
                        height: 280,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      const Text(
                        'Welcome to the Chat App!',
                        style: AppTextStyles.heading_2,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),

                const Spacer(),

                ConstrainedBox(
                  constraints: const BoxConstraints(
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
                            'Start Messaging',
                            style: AppTextStyles.button,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24), // Space from bottom
              ],
            ),
          ),
        ),
      ),
    );
  }
}
