import 'package:flutter/material.dart';
import '../../../theme/theme.dart'; // Make sure to import your AppTextStyles

class CustomInputField extends StatefulWidget {
  final String label;
  final TextInputType? keyboardType;
  final bool obscureText;
  final List<String>? dropdownItems;
  final String? selectedValue;
  final ValueChanged<String?>? onChanged;

  const CustomInputField({
    Key? key,
    required this.label,
    this.keyboardType,
    this.obscureText = false,
    this.dropdownItems,
    this.selectedValue,
    this.onChanged,
  }) : super(key: key);

  @override
  _CustomInputFieldState createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  bool _isPasswordVisible = false; // Initial state for password visibility

  @override
  Widget build(BuildContext context) {
    // Create a label style that combines AppTextStyles.body_1 with the disabled color
    TextStyle labelStyle = AppTextStyles.body_1.copyWith(
      color: AppColors.disabled, // Set label color to AppColors.disabled
    );

    return SizedBox(
      child: widget.dropdownItems != null
          ? DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: widget.label,
                labelStyle: labelStyle, // Use the combined label style
                filled: true, // Enable filling
                fillColor: AppColors.offWhite, // Set background color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4), // Set border radius
                  borderSide: BorderSide.none, // Remove border
                ),
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 6.0, horizontal: 8.0), // Set padding
              ),
              value: widget.selectedValue,
              items: widget.dropdownItems!
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: AppTextStyles.body_1, // Customize item text style
                  ),
                );
              }).toList(),
              onChanged: widget.onChanged,
              style: AppTextStyles.body_1, // Customize selected item text style
              dropdownColor:
                  AppColors.offWhite, // Customize dropdown background color
            )
          : TextField(
              decoration: InputDecoration(
                labelText: widget.label,
                labelStyle: labelStyle, // Use the combined label style
                filled: true, // Enable filling
                fillColor: AppColors.offWhite, // Set background color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4), // Set border radius
                  borderSide: BorderSide.none, // Remove border
                ),
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 6.0, horizontal: 8.0), // Set padding
                suffixIcon: widget.obscureText
                    ? IconButton(
                        icon: Icon(
                          _isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                      )
                    : null,
              ),
              keyboardType: widget.keyboardType,
              obscureText: widget.obscureText && !_isPasswordVisible,
              style: AppTextStyles.body_1, // Set input text style
            ),
    );
  }
}
