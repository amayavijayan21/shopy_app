import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
    Widget _buildInputField({
    required String label,
    bool isPassword = false,
    bool isFilled = false,
    IconData? icon, // <-- Add this line
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
        color: isFilled ? Colors.grey[200] : null,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: label, 
          labelStyle: TextStyle(
            color: Colors.grey.shade600,
            fontSize: 16,
          ),
          prefixIcon: icon != null
              ? Icon(icon, color: Colors.grey)
              : null, // <-- Add this line
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Added "Forgot password?" text where the AppBar was
              const Text(
              'Forgot',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w900,
              ),
              ),
              const Text(
              'password?',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w900,
              ),
              ),
              const SizedBox(height: 20),
              _buildInputField(
              label: 'Enter your email address',
              isFilled: true,
              isPassword: true,
              icon: Icons.email_rounded // <-- Add icon here
              ),// Empty field
              const SizedBox(height: 20),
              
              const Row(
              children: [
               Text("*", style: TextStyle(color: Colors.red, fontSize: 16)),
                SizedBox(width: 5),
                Text(
                'We will send you a message to set or reset',
                style: TextStyle(fontStyle: FontStyle.normal,fontSize: 16,
                color: Color.fromRGBO(117, 117, 117, 1),),
                ),
              ],
              ),
              Text( "your new password",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade600,
              ),
              ),
              const SizedBox(height: 50),
                          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 60), // Increased height to 60
              backgroundColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              ),
              child: const Text(
              'Submit',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}