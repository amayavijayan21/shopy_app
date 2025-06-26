import 'package:flutter/material.dart';
import 'package:shopy_app/screen/get_started_screen.dart';
import 'package:shopy_app/screen/signup_screen.dart';

import 'forgot_password.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget _buildInputField({
    required String label,
    bool isPassword = false,
    bool isFilled = false,
    IconData? icon, // <-- Add this line
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      // decoration: BoxDecoration(
      //   color: isFilled ? Colors.grey[200] : Colors.white,
      //   border: Border.all(color: Colors.grey.shade300),
      //   borderRadius: BorderRadius.circular(16)
      // ),
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const Text(
                'Back!',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 40),

              // Username/Email field with icon
              _buildInputField(
                label: 'Username or Email',
                isFilled: true,
                icon: Icons.person_3_rounded,
              ),
              const SizedBox(height: 30),

// Password field with icon
              _buildInputField(
                label: 'Password',
                isFilled: true,
                isPassword: true,
                icon: Icons.lock, // <-- Add icon here
              ),
              const SizedBox(height: 4),

              // Forgot Password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForgotPassword(),
                      ),
                    );
                  }, 
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              const SizedBox(height: 50),

              // Login Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const GetStarted()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 32),

              // OR Continue with
              const Center(
                child: Text(
                  '- OR Continue with -',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Social login buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildSocialButton('assets/images/google 1 (1).png'),
                  const SizedBox(width: 14),
                  _buildSocialButton('assets/images/apple 1.png'),
                  const SizedBox(width: 14),
                  _buildSocialButton('assets/images/facebook-app-symbol 1.png'),
                ],
              ),
              const SizedBox(height: 32),

              // Sign up prompt
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUp()),
                    );
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: RichText(
                    text: const TextSpan(
                      text: 'Create An Account ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                      children: [
                        TextSpan(
                          text: 'Sign Up',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
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

  Widget _buildSocialButton(String iconPath) {
    final buttonSize = MediaQuery.of(context).size.width > 400 ? 60.0 : 50.0;

    return Container(
      width: buttonSize,
      height: buttonSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.red,
          width: 1.5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Image.asset(
          iconPath,
          width: buttonSize * 0.6, // 60% of button size
          height: buttonSize * 0.6,
        ),
      ),
    );
  }
}




// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:shopy_app/screen/get_started_screen.dart';
// import 'package:shopy_app/screen/signup_screen.dart';

// import 'forgot_password.dart';

// class LoginScreen extends StatefulWidget {
//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   bool _isLoading = false;

//   Future<void> _loginUser() async {
//     setState(() => _isLoading = true);
    
//     try {
//       UserCredential userCredential = await _auth.signInWithEmailAndPassword(
//         email: _emailController.text.trim(),
//         password: _passwordController.text.trim(),
//       );
      
//       if (userCredential.user != null) {
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => const GetStarted()),
//         );
//       }
//     } on FirebaseAuthException catch (e) {
//       String errorMessage = 'Login failed. Please try again.';
//       if (e.code == 'user-not-found') {
//         errorMessage = 'No user found with this email.';
//       } else if (e.code == 'wrong-password') {
//         errorMessage = 'Incorrect password.';
//       }
//       print('Login error: ${e.code} - ${e.message}');

      
      
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text(errorMessage)),
//       );
//     } finally {
//       setState(() => _isLoading = false);
//     }
//   }

//   @override
//   void dispose() {
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }

//   Widget _buildInputField({
//     required String label,
//     bool isPassword = false,
//     bool isFilled = false,
//     IconData? icon,
//     TextEditingController? controller,
//   }) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 2),
//       decoration: BoxDecoration(
//         color: isFilled ? Colors.grey[200] : null,
//         border: Border.all(color: Colors.grey),
//         borderRadius: BorderRadius.circular(16),
//       ),
//       child: TextField(
//         controller: controller,
//         obscureText: isPassword,
//         decoration: InputDecoration(
//           border: InputBorder.none,
//           labelText: label,
//           labelStyle: TextStyle(
//             color: Colors.grey.shade600,
//             fontSize: 16,
//           ),
//           prefixIcon: icon != null ? Icon(icon, color: Colors.grey) : null,
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text(
//                 'Welcome',
//                 style: TextStyle(
//                   fontSize: 40,
//                   fontWeight: FontWeight.w900,
//                 ),
//               ),
//               const Text(
//                 'Back!',
//                 style: TextStyle(
//                   fontSize: 40,
//                   fontWeight: FontWeight.w900,
//                 ),
//               ),
//               const SizedBox(height: 40),

//               // Email field
//               _buildInputField(
//                 label: 'Email',
//                 isFilled: true,
//                 icon: Icons.person_3_rounded,
//                 controller: _emailController,
//               ),
//               const SizedBox(height: 30),

//               // Password field
//               _buildInputField(
//                 label: 'Password',
//                 isFilled: true,
//                 isPassword: true,
//                 icon: Icons.lock,
//                 controller: _passwordController,
//               ),
//               const SizedBox(height: 4),

//               // Forgot Password
//               Align(
//                 alignment: Alignment.centerRight,
//                 child: TextButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => const ForgotPassword(),
//                       ),
//                     );
//                   }, 
//                   style: TextButton.styleFrom(
//                     padding: EdgeInsets.zero,
//                     tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                   ),
//                   child: const Text(
//                     'Forgot Password?',
//                     style: TextStyle(
//                         color: Colors.red,
//                         fontSize: 16,
//                         fontWeight: FontWeight.w400),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 50),

//               // Login Button
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: _isLoading ? null : _loginUser,
//                   style: ElevatedButton.styleFrom(
//                     padding: const EdgeInsets.symmetric(vertical: 16),
//                     backgroundColor: Colors.red,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                   ),
//                   child: _isLoading
//                       ? const CircularProgressIndicator(color: Colors.white)
//                       : const Text(
//                           'Login',
//                           style: TextStyle(
//                             fontSize: 16,
//                             color: Colors.white,
//                             fontWeight: FontWeight.w800,
//                           ),
//                         ),
//                 ),
//               ),
//               const SizedBox(height: 32),

//               // OR Continue with
//               const Center(
//                 child: Text(
//                   '- OR Continue with -',
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 14,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 24),

//               // Social login buttons
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   _buildSocialButton('assets/images/google 1 (1).png'),
//                   const SizedBox(width: 14),
//                   _buildSocialButton('assets/images/apple 1.png'),
//                   const SizedBox(width: 14),
//                   _buildSocialButton('assets/images/facebook-app-symbol 1.png'),
//                 ],
//               ),
//               const SizedBox(height: 32),

//               // Sign up prompt
//               Center(
//                 child: TextButton(
//                   onPressed: () {
//                     Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(builder: (context) => const SignUp()),
//                     );
//                   },
//                   style: TextButton.styleFrom(
//                     padding: EdgeInsets.zero,
//                   ),
//                   child: RichText(
//                     text: const TextSpan(
//                       text: 'Create An Account ',
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 16,
//                           fontWeight: FontWeight.w400),
//                       children: [
//                         TextSpan(
//                           text: 'Sign Up',
//                           style: TextStyle(
//                             color: Colors.red,
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                             decoration: TextDecoration.underline,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildSocialButton(String iconPath) {
//     final buttonSize = MediaQuery.of(context).size.width > 400 ? 60.0 : 50.0;

//     return Container(
//       width: buttonSize,
//       height: buttonSize,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         border: Border.all(
//           color: Colors.red,
//           width: 1.5,
//         ),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(12),
//         child: Image.asset(
//           iconPath,
//           width: buttonSize * 0.6,
//           height: buttonSize * 0.6,
//         ),
//       ),
//     );
//   }
// }
