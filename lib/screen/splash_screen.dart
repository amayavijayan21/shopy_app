
// import 'package:flutter/material.dart';

// import 'onboarding_screen.dart';



// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   // @override
//   // void initState() {
//   //   super.initState();
//   //   Future.delayed(const Duration(seconds: 2), () {
//   //     Navigator.pushReplacement(
//   //       context,
//   //       PageRouteBuilder(
//   //         transitionDuration: const Duration(milliseconds: 600),
//   //         pageBuilder: (_, __, ___) => const OnboardingScreen(),
//   //         transitionsBuilder: (_, animation, __, child) {
//   //           return SlideTransition(
//   //             position: Tween<Offset>(
//   //               begin: const Offset(1, 0), // Slide from right
//   //               end: Offset.zero,
//   //             ).animate(animation),
//   //             child: child,
//   //           );
//   //         },
//   //       ),
//   //     );
//   //   });
//   // }
//   void _onHorizontalDragEnd(DragEndDetails details) {
//     // You can adjust the velocity threshold as needed
//     if (details.primaryVelocity != null && details.primaryVelocity! < 0) {
//       // Swiped left
//       Navigator.pushReplacement(
//         context,
//         PageRouteBuilder(
//           transitionDuration: const Duration(milliseconds: 600),
//           pageBuilder: (_, __, ___) => const OnboardingScreen(),
//           transitionsBuilder: (_, animation, __, child) {
//             return SlideTransition(
//               position: Tween<Offset>(
//                 begin: const Offset(1, 0), // Slide from right
//                 end: Offset.zero,
//               ).animate(animation),
//               child: child,
//             );
//           },
//         ),
//       );
//     }
//   }


//   // @override
//   // Widget build(BuildContext context) {
//   //   return const Scaffold(
//   //     backgroundColor: Colors.white,
//   //     body: Center(
//   //       child: Column(
//   //         mainAxisSize: MainAxisSize.min,
//   //         children: [
//   //           Image(
//   //             image: AssetImage('assets/images/shopylogo.png'),
//   //             height: 200,
//   //             width: 200,
//   //           ),
//   //         ],
//   //       ),
//   //     ),
//   //   );
//   // }
//   @override
// Widget build(BuildContext context) {
//   return GestureDetector(
//     onHorizontalDragEnd: _onHorizontalDragEnd, // Detect horizontal swipe
//     child: const Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Image(
//               image: AssetImage('assets/images/shopylogo.png'),
//               height: 200,
//               width: 200,
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }

// }


import 'package:flutter/material.dart';

import 'onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
    // If user swipes to the last page (onboarding), navigate
    if (index == 1) {
      Future.delayed(const Duration(milliseconds: 300), () {
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            transitionDuration: const Duration(milliseconds: 600),
            pageBuilder: (_, __, ___) => const OnboardingScreen(),
            transitionsBuilder: (_, animation, __, child) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1, 0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            },
          ),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: _onPageChanged,
            children: [
              // Splash Page
              const Center(
                child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image(
              image: AssetImage('assets/images/POS-LOGO 2.png'),
              height: 200,
              width: 200,
            ),
          ],
        ),
              ),
              // Dummy page for swipe (can show onboarding preview or blank)
              Container(),
            ],
          ),
          // Page indicator at the bottom center
          Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(2, (index) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 6),
                  width: _currentPage == index ? 16 : 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: _currentPage == index ? Colors.red : Colors.grey[300],
                    borderRadius: BorderRadius.circular(4),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
