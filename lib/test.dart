// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:skygoal_flutter_task/res/color.dart';
//
// class DetailsCollegeList extends StatefulWidget {
//   const DetailsCollegeList({Key? key}) : super(key: key);
//
//   @override
//   State<DetailsCollegeList> createState() => _DetailsCollegeListState();
// }
//
// class _DetailsCollegeListState extends State<DetailsCollegeList> {
//   late GoogleMapController mapController;
//
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 4,
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: AppColors.micIconColor,
//           leading: Padding(
//             padding: const EdgeInsets.only(left: 10, bottom: 14),
//             child: CircleAvatar(
//               backgroundColor: Colors.white,
//               child: IconButton(
//                 icon: Icon(
//                   Icons.arrow_back,
//                   color: Colors.black,
//                 ),
//                 onPressed: () {
//                   // Navigate back when the back arrow is pressed
//                   Navigator.pop(context);
//                 },
//               ),
//             ),
//           ),
//           actions: [
//             Padding(
//               padding: const EdgeInsets.only(right: 25, bottom: 10),
//               child: CircleAvatar(
//                 backgroundColor: Colors.white,
//                 child: IconButton(
//                   icon: Icon(
//                     Icons.save,
//                     color: Colors.black,
//                   ),
//                   onPressed: () {
//                     // Handle the share button press
//                   },
//                 ),
//               ),
//             ),
//           ],
//         ),
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Image.asset("images/det_clg_img.png",
//               fit: BoxFit.fitHeight,
//               width: double.infinity,
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "  GHJK Engineering college",
//                       style: GoogleFonts.lato(
//                         textStyle: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           fontSize: 20.0,
//                           color: Colors.black,
//                           letterSpacing: .5,
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 20),
//                     Text(
//                       "   Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n   Felis consectetur nulla pharetra praesent hendrerit\n   vulputate viverra. Pellentesque aliquam tempus faucibus\n   est.",
//                       style: GoogleFonts.lato(
//                         textStyle: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           fontSize: 12.0,
//                           color: Colors.grey,
//                           // letterSpacing: .5,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(width: 10),
//                 Container(
//                   height: 74,
//                   width: 52,
//                   decoration: BoxDecoration(
//                     color: AppColors.ratingcardcolor,
//                     borderRadius: BorderRadius.circular(12.0),
//                   ),
//                   padding: EdgeInsets.all(8.0),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         '4.3',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 14.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(height: 4.0),
//                       Icon(
//                         Icons.star,
//                         color: Colors.white,
//                         size: 24.0,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             Divider(),
//             TabBar(
//               tabs: [
//                 Tab(text: 'About College'),
//                 Tab(text: 'Hostel Facility'),
//                 Tab(text: 'Q & A'),
//                 Tab(text: 'Events'),
//               ],
//               labelColor: Colors.blue, // Change this to the desired label color
//
//               unselectedLabelColor: Colors.black, // Change this to the desired unselected label color
//
//               labelStyle: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w600), // Change this to the desired font size and style
//
//             ),
//             Divider(),
//             Expanded(
//               child: TabBarView(
//                 children: [
//                   // Widget for the "About College" tab
//                   Stack(
//                     children: [
//                       SingleChildScrollView(
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "   Description",
//                               style: GoogleFonts.lato(
//                                 textStyle: TextStyle(
//                                   fontWeight: FontWeight.w600,
//                                   fontSize: 16.0,
//                                   letterSpacing: .5,
//                                 ),
//                               ),
//                             ),
//                             Text(
//                               "    Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n    Neque accumsan, scelerisque eget lectus ullamcorper a\n    placerat. Porta cras at pretium varius purus cursus. Morbi\n    justo commodo habitant morbi quis pharetra posuere\n    mauris. Morbi sit risus, diam amet volutpat quis. Nisl\n    pellentesque nec facilisis ultrices.",
//                               style: GoogleFonts.lato(
//                                 textStyle: TextStyle(
//                                   color:
//                                   Colors.grey,
//                                   fontWeight: FontWeight.w600,
//                                   fontSize: 12.0,
//                                   letterSpacing: .5,
//                                 ),
//                               ),
//
//                             ),
//                             SizedBox(
//                               height: 10,
//                             ),
//                             Text(
//                               "Location",
//                               style: GoogleFonts.lato(
//                                 textStyle: TextStyle(
//                                   fontWeight: FontWeight.w600,
//                                   fontSize: 16.0,
//                                   letterSpacing: .5,
//                                 ),
//                               ),
//                             ),
//                             Image.asset("images/map.png"),
//                             Text(
//                               "Student Review",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold, fontSize: 19),
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Image.asset(
//                                   "images/img1.png",
//                                   height: 65, // Set the desired height
//                                   width: 65,  // Set the desired width
//                                 ),
//                                 SizedBox(width: 10,),
//                                 Image.asset(
//                                   "images/img2.png",
//                                   height: 60,
//                                   width: 60,
//                                 ),
//                                 SizedBox(width: 10,),
//                                 Image.asset(
//                                   "images/img3.png",
//                                   height: 60,
//                                   width: 60,
//                                 ),
//                                 SizedBox(width: 10,),
//                                 Image.asset(
//                                   "images/img4.png",
//                                   height: 60,
//                                   width: 60,
//                                 ),
//                                 SizedBox(width: 10,),
//                                 Image.asset(
//                                   "images/img_group.png",
//                                   height: 80, // Set the desired height
//                                   width: 80,  // Set the desired width
//                                 ),
//                               ],
//                             ),
//
//
//
//
//                             Text(
//                               "Arun sai",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold, fontSize: 17),
//                             ),
//
//                             Text(
//                               "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla\n sit magna suscipit tellus malesuada in facilisis a.",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.w300, fontSize: 14),
//                             ),
//                             SizedBox(height: 20,),
//                             Row(
//                               children: [
//                                 Icon(Icons.star,color: Colors.yellow,),
//                                 Icon(Icons.star,color: Colors.yellow,),
//                                 Icon(Icons.star,color: Colors.yellow,),
//                                 Icon(Icons.star_half,color: Colors.yellow,),
//                               ],
//                             ),
//
//
//
//
//
//                           ],
//                         ),
//                       ),
//                       Positioned(
//
//                         left: 0,
//                         right: 0,
//                         top: 135,
//                         bottom: 0,
//                         child: Padding(
//                           padding: const EdgeInsets.only(top: 60),
//                           child: Center(
//                             child: Container(
//                               width: double.infinity,
//                               child: ElevatedButton(
//                                 onPressed: () {
//                                   // Add your button click logic here
//                                 },
//                                 style: ButtonStyle(
//                                   backgroundColor:
//                                   MaterialStateProperty.all<Color>(
//                                       AppColors.micIconColor),
//                                   shape:
//                                   MaterialStateProperty.all<OutlinedBorder>(
//                                     RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(10.0),
//                                     ),
//                                   ),
//                                   elevation:
//                                   MaterialStateProperty.all<double>(8.0),
//                                 ),
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(16.0),
//                                   child: Text(
//                                     'Apply Now',
//                                     style: TextStyle(
//                                         fontSize: 16, color: Colors.white),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//
//
//                   // Widget for the "Hostel Facility" tab
//
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Expanded(
//                         child: DefaultTabController(
//                           length: 4,
//                           child: Column(
//                             children: [
//                               TabBar(
//                                 tabs: [
//                                   Container(
//                                       child: Tab(
//                                         icon: Icon(Icons.bed_outlined),
//                                         text: '1',
//                                       )),
//                                   Tab(
//                                     text: '2',
//                                     icon: Icon(Icons.bed_outlined),
//                                   ),
//                                   Tab(
//                                     text: '3',
//                                     icon: Icon(Icons.bed_outlined),
//                                   ),
//                                   Tab(
//                                     text: '4',
//                                     icon: Icon(Icons.bed_outlined),
//                                   ),
//                                 ],
//                               ),
//                               Divider(),
//                               Expanded(
//                                 child: Column(
//                                   children: [
//                                     Expanded(
//                                       child:
//                                       TabBarView(
//                                         children: [
//                                           Container(
//                                             child:
//                                             Column(
//                                               mainAxisAlignment: MainAxisAlignment.start,
//                                               crossAxisAlignment: CrossAxisAlignment.start,
//
//                                               children: [
//                                                 Center(child: BedAvailabilityGrid(), // Include the grid widget
//                                                 ),
//                                                 Center(child: BedAvailabilityGrid(), // Include the grid widget
//                                                 ),
//                                                 Center(child: BedAvailabilityGrid(), // Include the grid widget
//                                                 ),
//                                                 Column(
//
//                                                   children: [
//                                                     Row(
//                                                       children: [
//                                                         Text(
//                                                           "GHJK Engineering Hostel",
//                                                           style: TextStyle(
//                                                               fontSize: 19,
//                                                               fontWeight: FontWeight.bold),
//                                                         ),
//                                                         SizedBox(
//                                                           width: 40,
//                                                         ),
//                                                         Container(
//                                                           height: 35,
//                                                           width: 65,
//                                                           decoration: BoxDecoration(
//                                                             color: Colors.green,
//                                                             borderRadius:
//                                                             BorderRadius.circular(
//                                                                 12.0),
//                                                           ),
//                                                           padding: EdgeInsets.all(8.0),
//                                                           child: Row(
//                                                             mainAxisAlignment:
//                                                             MainAxisAlignment.center,
//                                                             children: [
//                                                               Text(
//                                                                 '4.3',
//                                                                 style: TextStyle(
//                                                                   color: Colors.white,
//                                                                   fontSize: 14.0,
//                                                                   fontWeight:
//                                                                   FontWeight.bold,
//                                                                 ),
//                                                               ),
//                                                               SizedBox(height: 4.0),
//                                                               Icon(
//                                                                 Icons.star,
//                                                                 color: Colors.white,
//                                                                 size: 24.0,
//                                                               ),
//                                                             ],
//                                                           ),
//                                                         ),
//
//                                                       ],
//
//                                                     ),
//                                                     Row(
//                                                       children: [
//                                                         Icon(Icons.add_location_outlined),
//                                                         Text("Lorem ipsum dolor sit amet, consectetur "),
//
//
//                                                       ],
//                                                     ),
//                                                     SizedBox(height: 20,),
//                                                     Row(
//                                                       children: [
//                                                         Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n Neque accumsan, scelerisque eget lectus ullamcorper a\n placerat. Porta cras at pretium varius purus cursus. Morbi\n justo commodo habitant morbi quis pharetra posuere\n mauris. Morbi sit risus, diam amet volutpat quis. Nisl\n pellentesque nec facilisis ultrices. ",
//                                                           style: GoogleFonts.lato(
//                                                             textStyle: TextStyle(
//                                                               color:
//                                                               Colors.grey,
//                                                               fontWeight: FontWeight.w700,
//                                                               fontSize: 14.0,
//                                                               letterSpacing: .5,
//                                                             ),
//                                                           ),
//                                                         ),
//
//                                                       ],
//                                                     ),
//                                                     SizedBox(height: 10,),
//                                                     Align(
//                                                       alignment: Alignment.centerLeft,
//                                                       child: Text(
//                                                         "Facilities",
//                                                         style: TextStyle(
//                                                             fontSize: 19,
//                                                             fontWeight: FontWeight.bold),
//                                                       ),
//                                                     ),
//                                                     SizedBox(height: 10,),
//
//                                                     Padding(
//                                                       padding: const EdgeInsets.only(left: 30),
//                                                       child: Row(
//                                                         mainAxisAlignment: MainAxisAlignment.start,
//                                                         children: [
//                                                           Image.asset("icons/univercity_1.png"),
//                                                           Text("College in 400 mtr"),
//
//                                                         ],
//
//                                                       ),
//                                                     ),
//
//                                                     Padding(
//                                                       padding: const EdgeInsets.only(left: 30),
//                                                       child: Row(
//                                                         mainAxisAlignment: MainAxisAlignment.start,
//                                                         children: [
//                                                           Image.asset("icons/bath.png"),
//                                                           Text("Bathrooms : 2")
//                                                         ],
//
//                                                       ),
//                                                     ),
//
//
//                                                   ],
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//
//
//
//
//                                         ],
//                                       ),
//                                     ),
//
//
//
//                                   ],
//                                 ),
//                               ),
//
//
//
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//
//                   // Widget for the "Q & A" tab
//                   Center(
//                     child: Text('Q & A Content'),
//                   ),
//
//                   // Widget for the "Events" tab
//                   Center(
//                     child: Text('Events Content'),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class BedAvailabilityGrid extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 3, // Set the number of columns in the grid
//         crossAxisSpacing: 8.0, // Set spacing between columns
//         mainAxisSpacing: 8.0, // Set spacing between rows
//       ),
//       itemCount: bedImages.length, // Replace with the number of images you have
//       itemBuilder: (context, index) {
//         return ClipRRect(
//           borderRadius: BorderRadius.circular(12.0), // Set the border radius
//
//           child: Image.asset(
//             bedImages[index], // Replace with the path to your images
//             fit: BoxFit.cover,
//           ),
//         );
//       },
//     );
//   }
// }
//
// // List of dummy image paths (replace with your actual image paths)
// List<String> bedImages = [
//   'images/hostel_room1.png',
//   'images/hostel_room2.png',
//   'images/hostelroom3.png',
//   // Add more image paths as needed
// ];
