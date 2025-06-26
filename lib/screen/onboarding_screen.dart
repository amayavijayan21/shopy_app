import 'package:flutter/material.dart';

import 'login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> onboardingData = [
    {
      "image": "assets/images/fashion shop-rafiki 1.png",
      "title": "Choose Products",
      "desc":
          "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
    },
    {
      "image": "assets/images/Sales consulting-pana 1.png",
      "title": "Make Payment",
      "desc":
          "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
    },
    {
      "image": "assets/images/Shopping bag-rafiki 1.png",
      "title": "Get Your Order",
      "desc":
          "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
    },
  ];

  void _nextPage() {
    if (_currentPage < onboardingData.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.ease,
      );
    } else {
      Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: (int page) {
          setState(() {
            _currentPage = page;
          });
        },
        itemCount: onboardingData.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              children: [
                // Top row with page number and skip button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "${index + 1}",
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const TextSpan(
                            text: "/3",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(224, 224, 224, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text("Skip",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            color: Colors.black)),
                  ],
                ),

                const SizedBox(height: 150),

                // Image
                Image.asset(
                  onboardingData[index]["image"]!,
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width * 0.9,
                  fit: BoxFit.contain,
                ),

                // Title
                Text(
                  onboardingData[index]["title"]!,
                  style: const TextStyle(
                      fontFamily: 'Montserrat-Italic',
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: Colors.black
                      ),
                ),

                const SizedBox(height: 16),

                // Description
                Text(
                  onboardingData[index]["desc"]!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),

                const Spacer(),

                // Dots indicator at bottom center
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    onboardingData.length,
                    (dotIndex) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: _currentPage == dotIndex ? 20 : 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: _currentPage == dotIndex
                            ? Colors.black
                            : Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

// Navigation buttons at bottom end (right)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (_currentPage != 0)
                      TextButton(
                        onPressed: () {
                          _pageController.previousPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease,
                          );
                        },
                        child: const Text(
                          "Prev",
                          style: TextStyle(
                            color: Color.fromRGBO(224, 224, 224, 1),
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                          ),
                        ),
                      )
                    else
                      const SizedBox(
                          width: 70), // Placeholder to keep alignment

                    TextButton(
                      onPressed: _nextPage,
                      child: Text(
                        _currentPage == onboardingData.length - 1
                            ? "Get Started"
                            : "Next",
                        style: const TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
