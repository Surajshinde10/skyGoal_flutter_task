import 'package:flutter/material.dart';
import 'package:skygoal_flutter_task/res/color.dart';
import '../models/grid_items.dart';
import 'home_grid_item_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<GridItem> top_colleges_items = [
    GridItem(
      imageUrl: 'images/top_clg.png',
      title: 'Top Colleges',
      subtitle:
      'Search through thousands of\n accredited colleges and universities\n online to find the right one for you.\nApply in 3 min, and connect with your\n future.',
      college_numbers: "+126"
    ),

  ];

  final List<GridItem> top_school_items = [

    GridItem(
      imageUrl: 'images/top_school_new.png',
      title: 'Top Schools',
      subtitle: 'Searching for the best school for you\n just got easier! With our Advanced\n School Search, you can easily filter out\n the schools that are fit for you.',
      college_numbers: "+106"
    ),

  ];

  final List<GridItem> exams_items = [

    GridItem(
      imageUrl: 'images/exam_new.png',
      title: 'Exams',
      subtitle: 'Find an end to end information about\n the exams that are happening in India',
      college_numbers: "+16",
    ),
    // Add more items as needed
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 225,
            width: 428,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF000000),
                  Color(0xFF0E3C6E),
                ],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Find your own way',
                              style: TextStyle(
                                fontFamily: 'Lato',
                                color: AppColors.whiteColor,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(height: 10,),

                            Text(
                              'Search in 600 colleges around !',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 70,),
                        IconButton(
                          icon: Icon(Icons.notifications, color: AppColors.whiteColor),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),

                // SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 53,
                        width: 279,
                        // margin: EdgeInsets.only(top: 20,bottom: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search for colleges, schools.....',
                            hintStyle: TextStyle(
                                color: Colors.grey, fontStyle: FontStyle.normal),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      width: 53,
                      height: 55,
                      child: IconButton(
                        icon: Icon(Icons.mic,
                       color: AppColors.micIconColor),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: ListView.builder(
                itemCount: top_colleges_items.length,
                itemBuilder: (context, index) {
                  return
                    Column(
                      children: [
                        TopCollegesWidget(item: top_colleges_items[index]),
                        SizedBox(height: 10,),

                        TopSchoolWidget(item: top_school_items[index]),
                        SizedBox(height: 10,),
                        ExamsWidget(item: exams_items[index]),

                        // ExamsWidget(item: items[index]),
                      ],
                    );





                },
              ),
            ),
          ),
    
        ],
      ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          backgroundColor: Colors.purpleAccent, // Set the background color here
          elevation: 1, // Set elevation to 0
          items: [
            BottomNavigationBarItem(
              backgroundColor: AppColors.micIconColor,
              icon: Icon(Icons.home, color: Colors.grey),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColors.micIconColor,
              icon: Icon(Icons.save, color: Colors.grey),
              activeIcon: Icon(Icons.content_paste_search, color: Colors.grey),
              label: 'Saved',
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColors.micIconColor,
              icon: Icon(Icons.save_as, color: Colors.grey),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColors.micIconColor,
              icon: Icon(Icons.supervisor_account, color: Colors.grey),
              label: 'Account',
            ),
          ],
          selectedLabelStyle: TextStyle(color: Colors.black),
          unselectedLabelStyle: TextStyle(color: AppColors.blackColor),
        )


    );
  }
}


