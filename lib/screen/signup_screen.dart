// // import 'package:flutter/material.dart';

// // class SignUp extends StatefulWidget {
// //   const SignUp({super.key});

// //   @override
// //   State<SignUp> createState() => _SignUpState();
// // }

// // class _SignUpState extends State<SignUp> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text(
// //           'Create an account',
// //           style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
// //         ),
// //         centerTitle: true,
// //         toolbarHeight: 80,
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(20.0),
// //         child: Column(
// //           children: [
// //             _buildInputField('Username or Email', false),
// //             _buildInputField('Password', true, isFilled: true),
// //             _buildInputField('Confirm Password', true),
// //             const SizedBox(height: 10),
// //             const Text(
// //               'By clicking the Register button, you agree to the public offer',
// //               style: TextStyle(fontSize: 12),
// //               textAlign: TextAlign.center,
// //             ),
// //             const Divider(thickness: 1),
// //             const SizedBox(height: 20),
// //             ElevatedButton(
// //               onPressed: () {},
// //               child: const Text('Create Account'),
// //               style: ElevatedButton.styleFrom(
// //                 minimumSize: const Size(double.infinity, 50),
// //               ),
// //             ),
// //             const SizedBox(height: 20),
// //             const Text('OR Continue with -', style: TextStyle(fontWeight: FontWeight.bold)),
// //             const SizedBox(height: 20),
// //             // Social login buttons would go here
// //             const Spacer(),
// //             TextButton(
// //               onPressed: () => Navigator.pushNamed(context, '/login'),
// //               child: const Text('Already Have an Account Login'),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildInputField(String label, bool isPassword, {bool isFilled = false}) {
// //     return Container(
// //       margin: const EdgeInsets.symmetric(vertical: 8),
// //       decoration: BoxDecoration(
// //         color: isFilled ? Colors.grey[200] : null,
// //         border: Border.all(color: Colors.grey),
// //         borderRadius: BorderRadius.circular(5),
// //       ),
// //       child: TextField(
// //         obscureText: isPassword,
// //         decoration: InputDecoration(
// //           labelText: label,
// //           contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
// //           border: InputBorder.none,
// //         ),
// //       ),
// //     );
// //   }
// // }

// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:shopy_app/screen/login_screen.dart';

// class SignUp extends StatefulWidget {
//   const SignUp({super.key});

//   @override
//   State<SignUp> createState() => _SignUpState();
// }


// class _SignUpState extends State<SignUp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Padding(
//           padding: const EdgeInsets.symmetric(horizontal:20,vertical: 30),// Adjusted padding
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: const [
//               Text(
//                 'Create an',
//                 style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900) // Reduced font size
//               ),
//               Text(
//                 'account',
//                 style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900)// Added grey color
//               ),
//             ],
//           ),
//         ),
//         toolbarHeight: 100
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal:30,vertical:40),// Adjusted padding 
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             _buildInputField('Username or Email', false, isFilled: true),
//             const SizedBox(height: 25), 
//             _buildInputField('Password', true, isFilled: true),
//             const SizedBox(height: 25),
//             _buildInputField('Confirm Password', true, isFilled: true),
//             const SizedBox(height: 25),
//             const Text.rich(
//               TextSpan(
//               children: [
//                 TextSpan(
//                 text: 'By clicking the ',
//                   style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 126, 114, 114), fontWeight: FontWeight.w400),
//                 ),
//                 TextSpan(
//                 text: 'Register',
//                 style: TextStyle(fontSize: 16,color: Colors.red, fontWeight: FontWeight.w400),
//                 ),
//                 TextSpan(
//                 text: ' button, you agree to the public offer',
//                 style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 126, 114, 114), fontWeight: FontWeight.w400),
//                 ),
//               ],
//               ),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {},
//               style: ElevatedButton.styleFrom(
//               minimumSize: const Size(double.infinity, 60), // Increased height to 60
//               backgroundColor: Colors.red,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               ),
//               child: const Text(
//               'Create Account',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
//               ),
//             ),
//             const SizedBox(height: 20),
//                           // OR Continue with
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
//                   _buildSocialButton('assets/images/google_13170545.png'),
//                   const SizedBox(width: 14),
//                   _buildSocialButton('assets/images/apple-big-logo_80676.png'),
//                   const SizedBox(width: 14),
//                   _buildSocialButton('assets/images/fb_14776954.png'),
//                 ],
//               ),
//               const SizedBox(height: 32),

//               // Sign up prompt
//               Center(
//                 child: TextButton(
//                   onPressed: () {
//                     Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(builder: (context) => LoginScreen(),)
//                     );
//                   },
//                   style: TextButton.styleFrom(
//                     padding: EdgeInsets.zero,
//                   ),
//                   child: RichText(
//                     text: const TextSpan(
//                       text: 'I Already Have An Account ',
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 16,
//                           fontWeight: FontWeight.w400),
//                       children: [
//                         TextSpan(
//                           text: 'Login',
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
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildInputField(String label, bool isPassword, {bool isFilled = false}) {
//     IconData? icon;
//     if (label.toLowerCase().contains('email') || label.toLowerCase().contains('username')) {
//       icon = Icons.person_3_rounded;
//     } else if (label.toLowerCase().contains('password')) {
//       icon = Icons.lock;
//     }

//     return Container(
//       height: MediaQuery.of(context).size.height * 0.07, // Adjusted height for better appearance
//       margin: const EdgeInsets.symmetric(vertical: 4),
//       decoration: BoxDecoration(
//         color: isFilled ? Colors.grey[200] : null,
//         border: Border.all(color: Colors.grey),
//         borderRadius: BorderRadius.circular(16)
//       ),
//       child: Row(
//         children: [
//           if (icon != null)
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 12),
//               child: Icon(
//                 icon,
//                 color: Colors.grey[700],
//                 size: 24, // Adjusted icon size for better appearance 
//               ),
//             ),
//           Expanded(
//             child: TextField(
//               obscureText: isPassword,
//               decoration: InputDecoration(
//                 labelText: label,
//                 contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
//                 border: InputBorder.none,
//               ),
//             ),
//           ),
//         ],
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
//           width: buttonSize * 0.6, // 60% of button size
//           height: buttonSize * 0.6,
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:shopy_app/screen/login_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title moved from AppBar to body
              const Text(
                'Create an',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const Text(
                'account',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 30),
          
              _buildInputField('Username or Email', false, isFilled: true),
              const SizedBox(height: 25),
              _buildInputField('Password', true, isFilled: true),
              const SizedBox(height: 25),
              _buildInputField('Confirm Password', true, isFilled: true),
              const SizedBox(height: 25),
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'By clicking the ',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 126, 114, 114),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: 'Register',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.red,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: ' button, you agree to the public offer',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 126, 114, 114),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 60),
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
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
                  _buildSocialButton('assets/images/google_13170545.png'),
                  const SizedBox(width: 14),
                  _buildSocialButton('assets/images/apple-big-logo_80676.png'),
                  const SizedBox(width: 14),
                  _buildSocialButton('assets/images/fb_14776954.png'),
                ],
              ),
              const SizedBox(height: 32),
          
              // Sign up prompt
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: RichText(
                    text: const TextSpan(
                      text: 'I Already Have An Account ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      children: [
                        TextSpan(
                          text: 'Login',
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

  Widget _buildInputField(String label, bool isPassword, {bool isFilled = false}) {
    IconData? icon;
    if (label.toLowerCase().contains('email') || label.toLowerCase().contains('username')) {
      icon = Icons.person_3_rounded;
    } else if (label.toLowerCase().contains('password')) {
      icon = Icons.lock;
    }

    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: isFilled ? Colors.grey[200] : null,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          if (icon != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Icon(
                icon,
                color: Colors.grey[700],
                size: 24,
              ),
            ),
          Expanded(
            child: TextField(
              obscureText: isPassword,
              decoration: InputDecoration(
                labelText: label,
                contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
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
          width: buttonSize * 0.6,
          height: buttonSize * 0.6,
        ),
      ),
    );
  }
}
