// import 'package:flutter/material.dart';
// import 'package:shopy_app/widgets/trending_card.dart';

// import '../widgets/category_icon.dart';
// import '../widgets/product_card.dart';

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   int _currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           elevation: 0,
//           leading: const Icon(Icons.menu, color: Colors.black),
//           title: Center(
//             child: Image.asset(
//               'assets/images/POS-LOGO 2.png',
//               width: 90,
//               height: 80,
//             ),
//           ),
//           actions: const [
//             CircleAvatar(
//               radius: 18,
//               backgroundImage: AssetImage(
//                   'assets/images/2289_SkVNQSBGQU1PIDEwMjgtMTE2 1.png'),
//             ),
//             SizedBox(width: 10),
//           ],
//         ),
//         body: SingleChildScrollView(
//           child: SafeArea(
//             child: Container(
//               color: const Color(
//                   0xFFF5F5F5), // Set your desired background color here
//               child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 16),
//                   child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const SizedBox(height: 10),
//                         // Search Bar
//                         TextField(
//                           decoration: InputDecoration(
//                             hintText: 'Search any Product..',
//                             hintStyle: const TextStyle(
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.w400,
//                                 color: Color.fromRGBO(187, 187, 187, 1)),
//                             prefixIcon: const Icon(Icons.search,
//                                 color: Color.fromRGBO(187, 187, 187, 1)),
//                             suffixIcon: const Icon(Icons.mic,
//                                 color: Color.fromRGBO(187, 187, 187, 1)),
//                             filled: true,
//                             fillColor: const Color.fromRGBO(255, 255, 255, 1),
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(12),
//                               borderSide: BorderSide.none,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 20),

//                         // All Featured section
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             const Text(
//                               'All Featured',
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             Row(
//                               children: [
//                                 Container(
//                                   padding: const EdgeInsets.symmetric(
//                                       horizontal: 12, vertical: 8),
//                                   decoration: BoxDecoration(
//                                     color:
//                                         const Color.fromRGBO(255, 255, 255, 1),
//                                     borderRadius: BorderRadius.circular(8),
//                                   ),
//                                   child: const Row(
//                                     children: [
//                                       Text('Sort',
//                                           style:
//                                               TextStyle(color: Colors.black)),
//                                       SizedBox(width: 4),
//                                       Icon(Icons.sort_rounded,
//                                           color: Colors.black, size: 18),
//                                     ],
//                                   ),
//                                 ),
//                                 const SizedBox(width: 15),
//                                 Container(
//                                   padding: const EdgeInsets.symmetric(
//                                       horizontal: 12, vertical: 8),
//                                   decoration: BoxDecoration(
//                                     color:
//                                         const Color.fromRGBO(255, 255, 255, 1),
//                                     borderRadius: BorderRadius.circular(8),
//                                   ),
//                                   child: const Row(
//                                     children: [
//                                       Text('Filter',
//                                           style:
//                                               TextStyle(color: Colors.black)),
//                                       SizedBox(width: 4),
//                                       Icon(Icons.filter_list,
//                                           color: Colors.black, size: 18),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 20),

//                         Container(
//                           padding: const EdgeInsets.symmetric(vertical: 12),
//                           decoration: BoxDecoration(
//                             color: const Color.fromARGB(255, 252, 248, 248),
//                             borderRadius: BorderRadius.circular(14),
//                           ),
//                           child: SizedBox(
//                             height: MediaQuery.of(context).size.height * 0.10,
//                             child: ListView(
//                               scrollDirection: Axis.horizontal,
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 16),
//                               children: const [
//                                 CategoryIcon(
//                                     label: 'Beauty',
//                                     image: 'assets/images/Ellipse 4.png'),
//                                 CategoryIcon(
//                                     label: 'Fashion',
//                                     image:
//                                         'assets/images/unsplash__3Q3tsJ01nc.png'),
//                                 CategoryIcon(
//                                     label: 'Kids',
//                                     image:
//                                         'assets/images/unsplash_GCDjllzoKLo.png'),
//                                 CategoryIcon(
//                                     label: 'Mens',
//                                     image:
//                                         'assets/images/unsplash_xPJYL0l5Ii8.png'),
//                                 CategoryIcon(
//                                     label: 'Womens',
//                                     image:
//                                         'assets/images/unsplash_OYYE4g-I5ZQ.png'),
//                                 CategoryIcon(
//                                     label: 'Womens',
//                                     image:
//                                         'assets/images/unsplash_OYYE4g-I5ZQ.png'),
//                               ],
//                             ),
//                           ),
//                         ),

//                         const SizedBox(height: 20),
//                         Column(
//                           children: [
//                             Container(
//                               height: MediaQuery.of(context).size.height * 0.24,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(12),
//                               ),
//                               child: Stack(
//                                 fit: StackFit.expand,
//                                 children: [
//                                   // 👕 Background Image
//                                   ClipRRect(
//                                     borderRadius: BorderRadius.circular(12),
//                                     child: Image.asset(
//                                       'assets/images/Rectangle 48.png', // Your pink banner
//                                       fit: BoxFit.cover,
//                                     ),
//                                   ),

//                                   // 🔳 Optional overlay
//                                   Container(
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(12),
//                                       color: Colors.black.withOpacity(0.02),
//                                     ),
//                                   ),

//                                   // 📝 Text + Button
//                                   Padding(
//                                     padding: const EdgeInsets.symmetric(
//                                         horizontal: 24, vertical: 32),
//                                     child: Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         const Text(
//                                           '50-40% OFF',
//                                           style: TextStyle(
//                                             fontSize: 24,
//                                             fontWeight: FontWeight.w600,
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                         const SizedBox(height: 5),
//                                         const Text('Now in (product)',
//                                             style:
//                                                 TextStyle(color: Colors.white)),
//                                         const SizedBox(height: 5),
//                                         const Text('All colours',
//                                             style:
//                                                 TextStyle(color: Colors.white)),
//                                         const Spacer(),
//                                         OutlinedButton(
//                                           onPressed: () {},
//                                           style: OutlinedButton.styleFrom(
//                                             foregroundColor: Colors.white,
//                                             side: const BorderSide(
//                                                 color: Colors.white),
//                                             shape: RoundedRectangleBorder(
//                                               borderRadius:
//                                                   BorderRadius.circular(8),
//                                             ),
//                                           ),
//                                           child: const Text('Shop Now →'),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),

//                             // 🔘 Swipe Indicator Dots
//                             const SizedBox(height: 12),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 buildDot(),
//                                 buildDot(isActive: true),
//                                 buildDot(),
//                               ],
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 20),
//                         Container(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 16, vertical: 12),
//                           decoration: BoxDecoration(
//                             color: Colors.blue,
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               const Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     'Deal of the Day',
//                                     style: TextStyle(
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.w700,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                   SizedBox(height: 4),
//                                   Row(
//                                     children: [
//                                       Icon(Icons.access_time,
//                                           size: 14, color: Colors.white),
//                                       SizedBox(width: 4),
//                                       Text(
//                                         '22h 55m 20s remaining',
//                                         style: TextStyle(
//                                             fontSize: 14, color: Colors.white),
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                               TextButton(
//                                 onPressed: () {},
//                                 child: const Text('View all →',
//                                     style: TextStyle(
//                                         color: Colors.white, fontSize: 14)),
//                               ),
//                             ],
//                           ),
//                         ),
//                         const SizedBox(height: 16),
//                         Stack(
//                           children: [
//                             // 👟 Horizontal List of Products
//                             SizedBox(
//                               height: 260,
//                               child: ListView(
//                                 scrollDirection: Axis.horizontal,
//                                 // padding: const EdgeInsets.symmetric(horizontal: 16),
//                                 children: const [
//                                   ProductCard(
//                                     image: 'assets/images/image 15.png',
//                                     title: 'Women Printed Kurta',
//                                     description:
//                                         'Neque porro quisquam est qui dolorem ipsum quia',
//                                     price: '₹1500',
//                                     originalPrice: '₹2499',
//                                     discount: '40%Off',
//                                     rating: 4.5,
//                                     reviewCount: 56890,
//                                   ),
//                                   SizedBox(width: 12),
//                                   ProductCard(
//                                     image: 'assets/images/image 15 (1).png',
//                                     title: 'HRX by Hrithik Roshan',
//                                     description:
//                                         'Neque porro quisquam est qui dolorem ipsum quia',
//                                     price: '₹2499',
//                                     originalPrice: '₹4999',
//                                     discount: '50%Off',
//                                     rating: 4.0,
//                                     reviewCount: 344567,
//                                   ),
//                                 ],
//                               ),
//                             ),

//                             // 👉 Arrow Overlay on the Right
//                             Positioned(
//                               right: 8,
//                               top: 100,
//                               child: Container(
//                                 width: 40, // Increase width for bigger circle
//                                 height: 40, // Increase height for bigger circle
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   color: Colors.grey,
//                                   boxShadow: [
//                                     BoxShadow(
//                                       color: Colors.black.withOpacity(0.1),
//                                       blurRadius: 6,
//                                       offset: const Offset(0, 2),
//                                     ),
//                                   ],
//                                 ),
//                                 child: const Center(
//                                   child:
//                                       Icon(Icons.arrow_forward_ios, size: 20),
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),

//                         Container(
//                           padding: const EdgeInsets.all(16),
//                           height: 110,
//                           decoration: BoxDecoration(
//                             color: const Color.fromARGB(255, 252, 248, 248),
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           child: Row(
//                             children: [
//                               Image.asset('assets/images/Rectangle 56.png',
//                                   width: 80, height: 80, fit: BoxFit.cover),
//                               const SizedBox(width: 26),
//                               const Expanded(
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Text(
//                                       'Special Offers 😱',
//                                       style: TextStyle(
//                                           fontSize: 18,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                     SizedBox(height: 4),
//                                     Text(
//                                       'We make sure you get the \noffer you need at best prices',
//                                       style: TextStyle(
//                                           fontSize: 14,
//                                           fontWeight: FontWeight.w300),
//                                       maxLines: 2,
//                                       overflow: TextOverflow.ellipsis,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         const SizedBox(height: 20),

//                         // Second Card (Flat and Heels)
//                         Container(
//                           padding: const EdgeInsets.all(16),
//                           height: 140,
//                           decoration: BoxDecoration(
//                             color: const Color.fromRGBO(231, 231, 235, 0.3),
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           child: Row(
//                             children: [
//                               Image.asset(
//                                   'assets/images/Screenshot 2025-06-25 222515.png',
//                                   width: 80,
//                                   height: 80,
//                                   fit: BoxFit.cover),
//                               const SizedBox(width: 50),
//                               Expanded(
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     const Text(
//                                       'Flat and Heels',
//                                       style: TextStyle(
//                                           fontSize: 18,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                     const SizedBox(height: 4),
//                                     const Text(
//                                       'Stand a chance to get rewarded',
//                                       style: TextStyle(
//                                           fontSize: 14,
//                                           fontWeight: FontWeight.w300),
//                                       textAlign: TextAlign.center,
//                                     ),
//                                     const SizedBox(height: 8),
//                                     ElevatedButton(
//                                       onPressed: () {
//                                         // Navigate or perform action
//                                       },
//                                       style: ElevatedButton.styleFrom(
//                                         backgroundColor: Colors.red,
//                                         minimumSize: const Size(
//                                             70, 40), // Set width and height
//                                         padding: const EdgeInsets.symmetric(
//                                             horizontal: 20, vertical: 1),
//                                         shape: RoundedRectangleBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(8),
//                                         ),
//                                       ),
//                                       child: const Text(
//                                         'Visit now →',
//                                         style: TextStyle(color: Colors.white),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),

//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             // 🔴 Trending Products Header
//                             Container(
//                               height: MediaQuery.of(context).size.height * 0.08,
//                               padding: const EdgeInsets.symmetric(
//                                   horizontal: 16, vertical: 12),
//                               decoration: BoxDecoration(
//                                 color: const Color.fromRGBO(253, 110, 135, 1),
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   const Column(
//                                     children: [
//                                       SizedBox(width: 6),
//                                       Text(
//                                         'Trending Products',
//                                         style: TextStyle(
//                                           color: Colors.white,
//                                           fontWeight: FontWeight.w600,
//                                           fontSize: 18,
//                                         ),
//                                       ),
//                                       Row(
//                                         children: [
//                                           Icon(Icons.calendar_month,
//                                               size: 16, color: Colors.white),
//                                           SizedBox(
//                                             width: 10,
//                                           ),
//                                           Text(
//                                             'Last Date 29/02/22',
//                                             style: TextStyle(
//                                                 color: Colors.white70,
//                                                 fontSize: 12),
//                                           ),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                   Container(
//                                     padding: const EdgeInsets.symmetric(
//                                         horizontal: 12, vertical: 6),
//                                     decoration: BoxDecoration(
//                                       border: Border.all(color: Colors.white),
//                                       borderRadius: BorderRadius.circular(6),
//                                     ),
//                                     child: const Text(
//                                       'View all →',
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.w500,
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),

//                             const SizedBox(height: 12),

//                             // 🛍️ Products + Arrow Scroll Hint
//                             Stack(
//                               children: [
//                                 // 👟 Horizontal List of Products
//                                 SizedBox(
//                                   height: 260,
//                                   child: ListView(
//                                     scrollDirection: Axis.horizontal,
//                                     children: const [
//                                       TrendingCard(
//                                         image: 'assets/images/image 15 (1).png',
//                                         title:
//                                             'IWC Schaffhausen 2021 Pilot\'s Watch "SIHH 2019" 44mm',
//                                         description: '',
//                                         price: '₹650',
//                                         originalPrice: '₹1599',
//                                         discount: '60% off',
//                                         rating: 4.5,
//                                         reviewCount: 20000,
//                                       ),
//                                       SizedBox(width: 12),
//                                       TrendingCard(
//                                         image: 'assets/images/image 15 (1).png',
//                                         title: 'Labbin White Sneakers',
//                                         description: 'For Men and Female',
//                                         price: '₹650',
//                                         originalPrice: '₹1250',
//                                         discount: '70% off',
//                                         rating: 4.0,
//                                         reviewCount: 12000,
//                                       ),
//                                       SizedBox(width: 12),
//                                       TrendingCard(
//                                         image: 'assets/images/image 15 (1).png',
//                                         title: 'Labbin White Sneakers',
//                                         description: 'For Men and Female',
//                                         price: '₹650',
//                                         originalPrice: '₹1250',
//                                         discount: '70% off',
//                                         rating: 4.0,
//                                         reviewCount: 12000,
//                                       ),
//                                     ],
//                                   ),
//                                 ),

//                                 // 👉 Arrow Overlay on the Right
//                                 Positioned(
//                                   right: 8,
//                                   top: 100,
//                                   child: Container(
//                                     width:
//                                         40, // Increase width for bigger circle
//                                     height:
//                                         40, // Increase height for bigger circle
//                                     decoration: BoxDecoration(
//                                       shape: BoxShape.circle,
//                                       color: Colors.grey,
//                                       boxShadow: [
//                                         BoxShadow(
//                                           color: Colors.black.withOpacity(0.1),
//                                           blurRadius: 6,
//                                           offset: const Offset(0, 2),
//                                         ),
//                                       ],
//                                     ),
//                                     child: const Center(
//                                       child: Icon(Icons.arrow_forward_ios,
//                                           size: 20),
//                                     ),
//                                   ),
//                                 )
//                               ],
//                             ),


//                             // Wrap the ListView in a Container or Card to show a box around it
//                             Container(
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(12),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.grey.withOpacity(0.1),
//                                     blurRadius: 8,
//                                     offset: const Offset(0, 2),
//                                   ),
//                                 ],
//                               ),
//                               child: ListView(
//                                 padding: const EdgeInsets.all(16),
//                                 shrinkWrap: true,
//                                 physics: const NeverScrollableScrollPhysics(),
//                                 children: [
//                                   // 🔥 Summer Sale Banner
//                                   Container(
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(12),
//                                       image: const DecorationImage(
//                                         image: AssetImage('assets/images/image 10.png'),
//                                         fit: BoxFit.fill,
//                                       ),
//                                     ),
//                                     height: 180,
//                                   ),
//                                   const SizedBox(height: 16),

//                                   // 🆕 New Arrivals
//                                   const Row(
//                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       Text(
//                                         "New Arrivals",
//                                         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                                       ),
//                                       TextButton(
//                                         onPressed: null,
//                                         child: Text("View all"),
//                                       ),
//                                     ],
//                                   ),
//                                   const Text("Summer '25 Collections"),

//                                 ],
//                               ),
//                             ),
                        

//       // ⬇ Bottom Navigation Bar
//    BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: (index) => setState(() => _currentIndex = index),
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: "Home",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite_border),
//             label: "Wishlist",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_cart),
//             label: "Cart",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: "Search",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: "Settings",
//           ),
//                       ])
//                           ],
//                         ),
//                       ])),
//             ),
//           ),
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           currentIndex: _currentIndex,
//           onTap: (index) => setState(() => _currentIndex = index),
//           items: const [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home, color: Colors.red),
//               label: "Home",
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.favorite_border),
//               label: "Wishlist",
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.shopping_cart),
//               label: "Cart",
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.search),
//               label: "Search",
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.settings),
//               label: "Settings",
//             ),
//           ],
//         ),
//       );
//   }
        
//   }

//   Widget buildDot({bool isActive = false}) {
//     return AnimatedContainer(
//       duration: const Duration(milliseconds: 300),
//       margin: const EdgeInsets.symmetric(horizontal: 4),
//       width: isActive ? 8 : 8,
//       height: 8,
//       decoration: BoxDecoration(
//         color: isActive
//             ? const Color.fromRGBO(255, 163, 179, 1)
//             : Colors.grey[300],
//         borderRadius: BorderRadius.circular(4),
//       ),
//     );
//   }


// class ProductItem extends StatelessWidget {
//   final String title;
//   final String description;
//   final String price;
//   final String originalPrice;
//   final String discount;
//   final int rating;
//   final int reviewCount;

//   const ProductItem({
//     super.key,
//     required this.title,
//     required this.description,
//     required this.price,
//     required this.originalPrice,
//     required this.discount,
//     required this.rating,
//     required this.reviewCount,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           height: 150,
//           decoration: BoxDecoration(
//             color: Colors.grey[200],
//             borderRadius: BorderRadius.circular(12),
//           ),
//           // Replace with actual image
//           child: const Center(child: Icon(Icons.image, size: 50)),
//         ),
//         const SizedBox(height: 10),
//         Text(
//           title,
//           style: const TextStyle(
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         const SizedBox(height: 5),
//         Text(
//           description,
//           style: TextStyle(color: Colors.grey[600]),
//         ),
//         const SizedBox(height: 5),
//         Text(
//           price,
//           style: const TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 16,
//           ),
//         ),
//         const SizedBox(height: 5),
//         Text.rich(
//           TextSpan(
//             text: originalPrice,
//             style: const TextStyle(
//               color: Colors.grey,
//               decoration: TextDecoration.lineThrough,
//             ),
//             children: [
//               TextSpan(
//                 text: ' - $discount',
//                 style: const TextStyle(
//                   color: Colors.red,
//                   decoration: TextDecoration.none,
//                 ),
//               ),
//             ],
//           ),
//         ),
//         const SizedBox(height: 5),
//         Row(
//           children: [
//             Row(
//               children: List.generate(5, (index) {
//                 return Icon(
//                   Icons.star,
//                   size: 16,
//                   color: index < rating ? Colors.amber : Colors.grey,
//                 );
//               }),
//             ),
//             const SizedBox(width: 5),
//             Text(reviewCount.toString()),
//           ],
//         ),
//       ],
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:shopy_app/views/profile_page.dart';
import 'package:shopy_app/widgets/trending_card.dart';

import '../widgets/category_icon.dart';
import '../widgets/product_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.menu, color: Colors.black),
        title: Center(
          child: Image.asset(
            'assets/images/POS-LOGO 2.png',
            width: 90,
            height: 80,
          ),
        ),
        actions:  [
            GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const Profile()),
                  );
            },
            child: const CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage(
                'assets/images/2289_SkVNQSBGQU1PIDEwMjgtMTE2 1.png'),
            ),
            ),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            color: const Color(0xFFF5F5F5),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  // Search Bar
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search any Product..',
                      hintStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(187, 187, 187, 1)),
                      prefixIcon: const Icon(Icons.search,
                          color: Color.fromRGBO(187, 187, 187, 1)),
                      suffixIcon: const Icon(Icons.mic,
                          color: Color.fromRGBO(187, 187, 187, 1)),
                      filled: true,
                      fillColor: const Color.fromRGBO(255, 255, 255, 1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // All Featured section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'All Featured',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Row(
                              children: [
                                Text('Sort',
                                    style: TextStyle(color: Colors.black)),
                                SizedBox(width: 4),
                                Icon(Icons.sort_rounded,
                                    color: Colors.black, size: 18),
                              ],
                            ),
                          ),
                          const SizedBox(width: 15),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Row(
                              children: [
                                Text('Filter',
                                    style: TextStyle(color: Colors.black)),
                                SizedBox(width: 4),
                                Icon(Icons.filter_list,
                                    color: Colors.black, size: 18),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 252, 248, 248),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.10,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        children: const [
                          CategoryIcon(
                              label: 'Beauty',
                              image: 'assets/images/Ellipse 4.png'),
                          CategoryIcon(
                              label: 'Fashion',
                              image: 'assets/images/unsplash__3Q3tsJ01nc.png'),
                          CategoryIcon(
                              label: 'Kids',
                              image: 'assets/images/unsplash_GCDjllzoKLo.png'),
                          CategoryIcon(
                              label: 'Mens',
                              image: 'assets/images/unsplash_xPJYL0l5Ii8.png'),
                          CategoryIcon(
                              label: 'Womens',
                              image: 'assets/images/unsplash_OYYE4g-I5ZQ.png'),
                          CategoryIcon(
                              label: 'Womens',
                              image: 'assets/images/unsplash_OYYE4g-I5ZQ.png'),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            // 👕 Background Image
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                'assets/images/Rectangle 48.png',
                                fit: BoxFit.cover,
                              ),
                            ),

                            // 🔳 Optional overlay
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.black.withOpacity(0.02),
                              ),
                            ),

                            // 📝 Text + Button
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 32),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    '50-40% OFF',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text('Now in (product)',
                                      style: TextStyle(color: Colors.white)),
                                  const SizedBox(height: 5),
                                  const Text('All colours',
                                      style: TextStyle(color: Colors.white)),
                                  const Spacer(),
                                  OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                      foregroundColor: Colors.white,
                                      side: const BorderSide(
                                          color: Colors.white),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8),
                                      ),
                                    ),
                                    child: const Text('Shop Now →'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      // 🔘 Swipe Indicator Dots
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildDot(),
                          buildDot(isActive: true),
                          buildDot(),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Deal of the Day',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Icon(Icons.access_time,
                                    size: 14, color: Colors.white),
                                SizedBox(width: 4),
                                Text(
                                  '22h 55m 20s remaining',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text('View all →',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 14)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Stack(
                    children: [
                      // 👟 Horizontal List of Products
                      SizedBox(
                        height: 260,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
                            ProductCard(
                              image: 'assets/images/image 15.png',
                              title: 'Women Printed Kurta',
                              description:
                                  'Neque porro quisquam est qui dolorem ipsum quia',
                              price: '₹1500',
                              originalPrice: '₹2499',
                              discount: '40%Off',
                              rating: 4.5,
                              reviewCount: 56890,
                            ),
                            SizedBox(width: 12),
                            ProductCard(
                              image: 'assets/images/image 15 (1).png',
                              title: 'HRX by Hrithik Roshan',
                              description:
                                  'Neque porro quisquam est qui dolorem ipsum quia',
                              price: '₹2499',
                              originalPrice: '₹4999',
                              discount: '50%Off',
                              rating: 4.0,
                              reviewCount: 344567,
                            ),
                          ],
                        ),
                      ),

                      // 👉 Arrow Overlay on the Right
                      Positioned(
                        right: 8,
                        top: 100,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 6,
                                offset: const Offset(0, 2),
                              )
                            ],
                          ),
                          child: const Center(
                            child: Icon(Icons.arrow_forward_ios, size: 20),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),

                  Container(
                    padding: const EdgeInsets.all(16),
                    height: 110,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 252, 248, 248),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/images/Rectangle 56.png',
                            width: 80, height: 80, fit: BoxFit.cover),
                        const SizedBox(width: 26),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Special Offers 😱',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'We make sure you get the \noffer you need at best prices',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w300),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Second Card (Flat and Heels)
                  Container(
                    padding: const EdgeInsets.all(16),
                    height: 140,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(231, 231, 235, 0.3),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                            'assets/images/Screenshot 2025-06-25 222515.png',
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover),
                        const SizedBox(width: 50),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Flat and Heels',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 4),
                              const Text(
                                'Stand a chance to get rewarded',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w300),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 8),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  minimumSize: const Size(70, 40),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: const Text(
                                  'Visit now →',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 🔴 Trending Products Header
                      Container(
                        height: MediaQuery.of(context).size.height * 0.08,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(253, 110, 135, 1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              children: [
                                SizedBox(width: 6),
                                Text(
                                  'Trending Products',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.calendar_month,
                                        size: 16, color: Colors.white),
                                    SizedBox(width: 10),
                                    Text(
                                      'Last Date 29/02/22',
                                      style: TextStyle(
                                          color: Colors.white70, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 6),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: const Text(
                                'View all →',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 12),

                      // 🛍️ Products + Arrow Scroll Hint
                      Stack(
                        children: [
                          // 👟 Horizontal List of Products
                          SizedBox(
                            height: 260,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: const [
                                TrendingCard(
                                  image: 'assets/images/image 15 (1).png',
                                  title:
                                      'IWC Schaffhausen 2021 Pilot\'s Watch "SIHH 2019" 44mm',
                                  description: '',
                                  price: '₹650',
                                  originalPrice: '₹1599',
                                  discount: '60% off',
                                  rating: 4.5,
                                  reviewCount: 20000,
                                ),
                                SizedBox(width: 12),
                                TrendingCard(
                                  image: 'assets/images/image 15 (1).png',
                                  title: 'Labbin White Sneakers',
                                  description: 'For Men and Female',
                                  price: '₹650',
                                  originalPrice: '₹1250',
                                  discount: '70% off',
                                  rating: 4.0,
                                  reviewCount: 12000,
                                ),
                                SizedBox(width: 12),
                                TrendingCard(
                                  image: 'assets/images/image 15 (1).png',
                                  title: 'Labbin White Sneakers',
                                  description: 'For Men and Female',
                                  price: '₹650',
                                  originalPrice: '₹1250',
                                  discount: '70% off',
                                  rating: 4.0,
                                  reviewCount: 12000,
                                ),
                              ],
                            ),
                          ),

                          // 👉 Arrow Overlay on the Right
                          Positioned(
                            right: 8,
                            top: 100,
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 6,
                                    offset: const Offset(0, 2),
                                  )
                                ],
                              ),
                              child: const Center(
                                child: Icon(Icons.arrow_forward_ios, size: 20),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),

                      // Wrap the ListView in a Container or Card to show a box around it
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: ListView(
                          padding: const EdgeInsets.all(0),
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            // 🔥 Summer Sale Banner
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: const DecorationImage(
                                  image: AssetImage('assets/images/image 10.png'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              height: 180,
                            ),
                            const SizedBox(height: 16),

                            // 🆕 New Arrivals
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "New Arrivals",
                                  style: TextStyle(
                                      fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                TextButton(
                                  onPressed: null,
                                  child: Text("View all"),
                                ),
                              ],
                            ),
                            const Text("Summer '25 Collections"),
                          ],
                        ),
                      ),
                      // Add this code after the New Arrivals section in your Column widget
const SizedBox(height: 16),

// 🏷️ Sponsored Card - Full Width Version
Container(
  width: double.infinity,
  padding: const EdgeInsets.all(16),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.1),
        blurRadius: 8,
        offset: const Offset(0, 2),
      ),
    ],
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // Sponsored Label
      const Text(
        'Sponserd',
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
      const SizedBox(height: 8),
      
      // Full Width Image
      ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          'assets/images/image 12 (1).png', // Replace with your full-width image
          width: double.infinity,
          height: 250, // Adjust height as needed
          fit: BoxFit.fill,
        ),
      ),
      const SizedBox(height: 12),
      // Subtitle
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
        'up to 50% Off',
        style: TextStyle(
          fontSize: 16,
          color: Colors.black,
        ),
        textAlign: TextAlign.center,
          ),
          Icon(Icons.arrow_forward_ios, size: 18, color: Colors.grey),
        ],
      ),
      const SizedBox(height: 16),
    ],
  ),
),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        selectedItemColor: Colors.red, // Set active icon and label color to red
        unselectedItemColor: Colors.grey, // Set inactive icon and label color
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Wishlist",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}

Widget buildDot({bool isActive = false}) {
  return AnimatedContainer(
    duration: const Duration(milliseconds: 300),
    margin: const EdgeInsets.symmetric(horizontal: 4),
    width: isActive ? 8 : 8,
    height: 8,
    decoration: BoxDecoration(
      color: isActive
          ? const Color.fromRGBO(255, 163, 179, 1)
          : Colors.grey[300],
      borderRadius: BorderRadius.circular(4),
    ),
  );
}

class ProductItem extends StatelessWidget {
  final String title;
  final String description;
  final String price;
  final String originalPrice;
  final String discount;
  final int rating;
  final int reviewCount;

  const ProductItem({
    super.key,
    required this.title,
    required this.description,
    required this.price,
    required this.originalPrice,
    required this.discount,
    required this.rating,
    required this.reviewCount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 150,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Center(child: Icon(Icons.image, size: 50)),
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          description,
          style: TextStyle(color: Colors.grey[600]),
        ),
        const SizedBox(height: 5),
        Text(
          price,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 5),
        Text.rich(
          TextSpan(
            text: originalPrice,
            style: const TextStyle(
              color: Colors.grey,
              decoration: TextDecoration.lineThrough,
            ),
            children: [
              TextSpan(
                text: ' - $discount',
                style: const TextStyle(
                  color: Colors.red,
                  decoration: TextDecoration.none,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            Row(
              children: List.generate(5, (index) {
                return Icon(
                  Icons.star,
                  size: 16,
                  color: index < rating ? Colors.amber : Colors.grey,
                );
              }),
            ),
            const SizedBox(width: 5),
            Text(reviewCount.toString()),
          ],
        ),]
);
  }
}
