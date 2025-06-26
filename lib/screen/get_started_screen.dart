import 'package:flutter/material.dart';
import 'package:shopy_app/views/home_page.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Stack(
  //       children: [
  //         // Background Image
  //         SizedBox.expand(
  //           child: Image.asset(
  //             'assets/images/unsplash_fouVDmGXoPI.png', // Replace with your actual image path
  //             fit: BoxFit.cover,
  //           ),
  //         ),

  //         // Dark overlay (optional for text visibility)
  //         Container(
  //           color: Colors.black.withOpacity(0.3),
  //         ),

  //         // Text and Button
  //         Positioned(
  //           left: 20,
  //           right: 20,
  //           bottom: 60,
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               const Text(
  //                 'You want\nAuthentic, here\nyou go!',
  //                 style: TextStyle(
  //                   color: Colors.white,
  //                   fontSize: 28,
  //                   fontWeight: FontWeight.bold,
  //                   height: 1.3,
  //                 ),
  //               ),
  //               const SizedBox(height: 10),
  //               const Text(
  //                 'Find it here, buy it now!',
  //                 style: TextStyle(
  //                   color: Colors.white70,
  //                   fontSize: 14,
  //                 ),
  //               ),
  //               const SizedBox(height: 30),
  //               SizedBox(
  //                 width: double.infinity,
  //                 child: ElevatedButton(
  //                   onPressed: () {
  //                     // Navigation logic
  //                   },
  //                   style: ElevatedButton.styleFrom(
  //                     backgroundColor: Colors.red,
  //                     padding: const EdgeInsets.symmetric(vertical: 16),
  //                     shape: RoundedRectangleBorder(
  //                       borderRadius: BorderRadius.circular(8),
  //                     ),
  //                   ),
  //                   child: const Text(
  //                     'Get Started',
  //                     style: TextStyle(fontSize: 16, color: Colors.white),
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          SizedBox.expand(
            child: Image.asset(
              'assets/images/unsplash_fouVDmGXoPI.png', // your image
              fit: BoxFit.cover,
            ),
          ),

          // Optional: dark overlay for readability
          Container(
            color: Colors.black.withOpacity(0.3),
          ),

          // Centered Text
          const Positioned(
            left: 20,
            right: 20,
            bottom: 160,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'You want\nAuthentic, here\nyou go!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Find it here, buy it now!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Button at the bottom
          Positioned(
            left: 50,
            right: 50,
            bottom: 40,
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
