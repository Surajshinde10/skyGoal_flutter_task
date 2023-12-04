import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skygoal_flutter_task/res/color.dart';
import 'details_clg_list.dart';

class CollegeListScreen extends StatelessWidget {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<DetailsItem> items1 = [
      DetailsItem(
          imageUrl: 'images/eng_clg.png',
          title: 'GHJK Engineering college',
          subtitle:
              'Lorem ipsum dolor sit amet, consectetur adipiscing\n elit. Eu ut imperdiet sed nec ullamcorper.',
          acheivement: "More than 1000+ students have been placed"),
    ];

    final List<DetailsItem> items2 = [
      DetailsItem.asset(
          imageUrl: 'images/tech.png',
          title: 'Bachelor of Technology',
          subtitle:
              'Lorem ipsum dolor sit amet, consectetur adipiscing\n elit. Eu ut imperdiet sed nec ullamcorper.',
          acheivement: "Lorem ipsum dolor sit amet, consectetur adipiscing "),
      // Add more items as needed
    ];
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          body: Column(
            children: [
              Container(
                height: 180,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 70),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 53,
                              width: 279,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search for colleges, schools.....',
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontStyle: FontStyle.normal),
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
                          SizedBox(
                            width: 10,
                          ),
                          // Microphone Icon
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
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
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: items1.length,
                    itemBuilder: (context, index) {
                      return Column(children: [
                        DetailsItemWidget(item: items1[index]),
                      ]);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: items2.length,
                    itemBuilder: (context, index) {
                      return Column(children: [
                        DetailsItemWidget(item: items2[index]),
                      ]);
                    },
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              // setState(() {
              //   _currentIndex = index;
              // });
            },
            backgroundColor:
                Colors.purpleAccent, // Set the background color here
            elevation: 1, // Set elevation to 0
            items: [
              BottomNavigationBarItem(
                backgroundColor: AppColors.micIconColor,
                icon: Icon(Icons.home, color: Colors.grey),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                backgroundColor: AppColors.micIconColor,
                icon: Icon(Icons.content_paste_search, color: Colors.grey),
                activeIcon:
                    Icon(Icons.content_paste_search, color: Colors.white),
                label: 'Saved',
              ),
              BottomNavigationBarItem(
                backgroundColor: AppColors.micIconColor,
                icon: Icon(Icons.save, color: Colors.grey),
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
          )),
    );
  }
}

class DetailsItemWidget extends StatelessWidget {
  final DetailsItem item;

  DetailsItemWidget({required this.item});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailsCollegeList()),
            );
          },
          child: Container(
            height: 243, // Set the desired height
            width: 354,
            child: Card(
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Stack(
                children: [
                  Image.asset(
                    item.imageUrl,
                    // fit: BoxFit.fitWidth,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 120),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 28),
                                  child: Text(
                                    item.title,
                                    style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14.0,
                                        color: Colors.black,
                                        letterSpacing: .5,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text(
                                    item.subtitle,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 9.0,
                                      color: Colors.black12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 33,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(
                                        12.0), // Adjust the radius as needed
                                  ),
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Center(
                                        child: Text(
                                          '4.3',
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                          width:
                                              4.0), // Add some spacing between icon and text
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 20.0,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 34,
                                    // width: 40,
                                    decoration: BoxDecoration(
                                      color: AppColors.micIconColor,
                                      borderRadius: BorderRadius.circular(
                                          12.0), // Adjust the radius as needed
                                    ),
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Apply Now',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset("images/like.png"),
                            Text(
                              item.acheivement,
                              style: TextStyle(fontSize: 9),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Icon(
                              Icons.remove_red_eye,
                              color: Colors.black12,
                              size: 20.0,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                "468+",
                                style: TextStyle(fontSize: 9),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 5),
              child: CircleAvatar(
                backgroundColor:
                    Colors.white, // Set the background color as needed
                child: IconButton(
                  icon: Icon(
                    Icons.share,
                    color: Colors.black, // Set the icon color as needed
                  ),
                  onPressed: () {
                    // Handle the share button press
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, top: 5),
              child: CircleAvatar(
                backgroundColor:
                    Colors.white, // Set the background color as needed
                child: IconButton(
                  icon: Icon(
                    Icons.save_as_rounded,
                    color: Colors.black, // Set the icon color as needed
                  ),
                  onPressed: () {
                    // Handle the share button press
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ContainerWithCenteredText extends StatelessWidget {
  final String text;

  ContainerWithCenteredText(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.blue, // Adjust the color as needed
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white, // Adjust the text color as needed
            fontSize: 12, // Adjust the font size as needed
          ),
        ),
      ),
    );
  }
}
