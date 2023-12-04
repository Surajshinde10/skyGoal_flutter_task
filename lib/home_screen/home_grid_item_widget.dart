import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skygoal_flutter_task/res/color.dart';

import '../models/grid_items.dart';
import '../details_clg_list/college_details_page.dart';

class TopCollegesWidget extends StatefulWidget {
  final GridItem item;

  TopCollegesWidget({required this.item});

  @override
  State<TopCollegesWidget> createState() => _TopCollegesWidgetState();
}

class _TopCollegesWidgetState extends State<TopCollegesWidget> {
  late int selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color:  Colors.white,
      height: 159.0,
      child: GestureDetector(
        onTap: () {
          _showBottomSheet(context, widget.item);
        },
        child: Card(
          color: Colors.white,
          margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          child: Stack(
            children: [
              Image.asset(
                widget.item.imageUrl,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.item.title,
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 20.0,
                          color: Colors.white,
                          letterSpacing: .5,
                        ),
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      widget.item.subtitle,
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 12.0,
                          color: Colors.white,
                          letterSpacing: .5,
                        ),
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,

                        children: [


                          Text(
                            widget.item.college_numbers,
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 10.0,
                              color: Colors.black,
                            ),
                          ),
                          // SizedBox(width: 3,),
                          Text(
                            "Colleges",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 10.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context, GridItem item) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 350.0,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("Sort by",  style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18.0,
                          color: Colors.black,
                          letterSpacing: .5,
                        ),
                      ),),
                    ),
                    IconButton(
                      icon: Icon(Icons.cancel_outlined, color: Colors.black),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                Divider(),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("icons/education.png"),

                        Text("Bachelor of Technology", style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0,
                            color: Colors.black,
                            letterSpacing: .5,
                          ),
                        ),),

                        Radio(
                          value: 2,
                          groupValue: selectedRadio,
                          activeColor: selectedRadio == 2
                              ? Colors.green // Change color if selected
                              : null,
                          onChanged: (val) {
                            setState(() {
                              selectedRadio = val as int;
                            });
                            // Navigate to another page here
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CollegeListScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("icons/sketch.png"),
                        Text("Bachelor of Architecture",
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                              color: Colors.black,
                              letterSpacing: .5,
                            ),
                          ),),
                        Radio(
                          value: 1,
                          groupValue: selectedRadio,
                          activeColor: selectedRadio == 1
                              ? Colors.green // Change color if selected
                              : null,
                          onChanged: (val) {
                            setState(() {
                              selectedRadio = val as int;
                            });
                            // Navigate to another page here
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CollegeListScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("icons/doctor.png"),

                        Text("Pharmacy",  style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0,
                            color: Colors.black,
                            letterSpacing: .5,
                          ),
                        ),),

                        Radio(
                          value: 2,
                          groupValue: selectedRadio,
                          activeColor: selectedRadio == 2
                              ? Colors.green // Change color if selected
                              : null,
                          onChanged: (val) {
                            setState(() {
                              selectedRadio = val as int;
                            });
                            // Navigate to another page here
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CollegeListScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("icons/balnce.png"),
                        Text("Law",  style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0,
                            color: Colors.black,
                            letterSpacing: .5,
                          ),
                        ),),
                        Radio(
                          value: 1,
                          groupValue: selectedRadio,
                          activeColor: selectedRadio == 1
                              ? Colors.green // Change color if selected
                              : null,
                          onChanged: (val) {
                            setState(() {
                              selectedRadio = val as int;
                            });
                            // Navigate to another page here
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CollegeListScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("icons/setting.png"),
                        Text("Management",  style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0,
                            color: Colors.black,
                            letterSpacing: .5,
                          ),
                        ),),
                        Radio(
                          value: 1,
                          groupValue: selectedRadio,
                          activeColor: selectedRadio == 1
                              ? Colors.green // Change color if selected
                              : null,
                          onChanged: (val) {
                            setState(() {
                              selectedRadio = val as int;
                            });
                            // Navigate to another page here
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CollegeListScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}


class TopSchoolWidget extends StatefulWidget {
  final GridItem item;

  TopSchoolWidget({required this.item});

  @override
  State<TopSchoolWidget> createState() => _TopSchoolWidgetState();
}

class _TopSchoolWidgetState extends State<TopSchoolWidget> {
  late int selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 159.0,
      child: GestureDetector(
        onTap: () {
          _showBottomSheet(context, widget.item);
        },
        child: Card(
          margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          child: Stack(
            children: [
              Image.asset(
                widget.item.imageUrl,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.item.title,
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 19.0,
                          color: Colors.white,
                          letterSpacing: .5,
                        ),
                      ),
                    ),
                    Text(
                      widget.item.subtitle,
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 12.0,
                          color: Colors.white,
                          letterSpacing: .5,
                        ),
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              widget.item.college_numbers,
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 11.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(width: 3,),
                          Text(
                            "School",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 10.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 4.0),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context, GridItem item) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 350.0,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("Sort by",  style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18.0,
                          color: Colors.black,
                          letterSpacing: .5,
                        ),
                      ),),
                    ),
                    IconButton(
                      icon: Icon(Icons.cancel_outlined, color: Colors.black),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                Divider(),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("icons/education.png"),

                        Text("Bachelor of Technology", style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0,
                            color: Colors.black,
                            letterSpacing: .5,
                          ),
                        ),),

                        Radio(
                          value: 2,
                          groupValue: selectedRadio,
                          activeColor: selectedRadio == 2
                              ? Colors.green // Change color if selected
                              : null,
                          onChanged: (val) {
                            setState(() {
                              selectedRadio = val as int;
                            });
                            // Navigate to another page here
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CollegeListScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("icons/sketch.png"),
                        Text("Bachelor of Architecture",
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                              color: Colors.black,
                              letterSpacing: .5,
                            ),
                          ),),
                        Radio(
                          value: 1,
                          groupValue: selectedRadio,
                          activeColor: selectedRadio == 1
                              ? Colors.green // Change color if selected
                              : null,
                          onChanged: (val) {
                            setState(() {
                              selectedRadio = val as int;
                            });
                            // Navigate to another page here
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CollegeListScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("icons/doctor.png"),

                        Text("Pharmacy",  style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0,
                            color: Colors.black,
                            letterSpacing: .5,
                          ),
                        ),),

                        Radio(
                          value: 2,
                          groupValue: selectedRadio,
                          activeColor: selectedRadio == 2
                              ? Colors.green // Change color if selected
                              : null,
                          onChanged: (val) {
                            setState(() {
                              selectedRadio = val as int;
                            });
                            // Navigate to another page here
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CollegeListScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("icons/balnce.png"),
                        Text("Law",  style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0,
                            color: Colors.black,
                            letterSpacing: .5,
                          ),
                        ),),
                        Radio(
                          value: 1,
                          groupValue: selectedRadio,
                          activeColor: selectedRadio == 1
                              ? Colors.green // Change color if selected
                              : null,
                          onChanged: (val) {
                            setState(() {
                              selectedRadio = val as int;
                            });
                            // Navigate to another page here
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CollegeListScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("icons/setting.png"),
                        Text("Management",  style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0,
                            color: Colors.black,
                            letterSpacing: .5,
                          ),
                        ),),
                        Radio(
                          value: 1,
                          groupValue: selectedRadio,
                          activeColor: selectedRadio == 1
                              ? Colors.green // Change color if selected
                              : null,
                          onChanged: (val) {
                            setState(() {
                              selectedRadio = val as int;
                            });
                            // Navigate to another page here
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CollegeListScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class ExamsWidget extends StatefulWidget {
  final GridItem item;

  ExamsWidget({required this.item});

  @override
  State<ExamsWidget> createState() => _ExamsWidgetState();
}

class _ExamsWidgetState extends State<ExamsWidget> {
  late int selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 159.0,
      child: GestureDetector(
        onTap: () {
          _showBottomSheet(context, widget.item);
        },
        child: Card(
          margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          child: Stack(
            children: [
              Image.asset(
                widget.item.imageUrl,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.item.title,
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 19.0,
                          color: Colors.white,
                          letterSpacing: .5,
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      widget.item.subtitle,
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 12.0,
                          color: Colors.white,
                          letterSpacing: .5,
                        ),
                      ),
                    ),
                    SizedBox(height: 4.0),

                    Padding(
                      padding: const EdgeInsets.only(top: 50,right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              widget.item.college_numbers,
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 11.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(width: 3,),
                          Text(
                            "Exam",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 10.0,
                              color: Colors.grey,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context, GridItem item) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 350.0,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("Sort by",
                        style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 18.0,
                          color: Colors.black,
                          letterSpacing: .5,
                        ),
                      ),),
                    ),
                    IconButton(
                      icon: Icon(Icons.cancel_outlined, color: Colors.black),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                Divider(),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("icons/education.png"),

                        Text("Bachelor of Technology", style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0,
                            color: Colors.black,
                            letterSpacing: .5,
                          ),
                        ),),

                        Radio(
                          value: 2,
                          groupValue: selectedRadio,
                          activeColor: selectedRadio == 2
                              ? Colors.green // Change color if selected
                              : null,
                          onChanged: (val) {
                            setState(() {
                              selectedRadio = val as int;
                            });
                            // Navigate to another page here
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CollegeListScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("icons/sketch.png"),
                        Text("Bachelor of Architecture",
                          style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0,
                            color: Colors.black,
                            letterSpacing: .5,
                          ),
                        ),),
                        Radio(
                          value: 1,
                          groupValue: selectedRadio,
                          activeColor: selectedRadio == 1
                              ? Colors.green // Change color if selected
                              : null,
                          onChanged: (val) {
                            setState(() {
                              selectedRadio = val as int;
                            });
                            // Navigate to another page here
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CollegeListScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("icons/doctor.png"),

                        Text("Pharmacy",  style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0,
                            color: Colors.black,
                            letterSpacing: .5,
                          ),
                        ),),

                        Radio(
                          value: 2,
                          groupValue: selectedRadio,
                          activeColor: selectedRadio == 2
                              ? Colors.green // Change color if selected
                              : null,
                          onChanged: (val) {
                            setState(() {
                              selectedRadio = val as int;
                            });
                            // Navigate to another page here
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CollegeListScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("icons/balnce.png"),
                        Text("Law",  style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0,
                            color: Colors.black,
                            letterSpacing: .5,
                          ),
                        ),),
                        Radio(
                          value: 1,
                          groupValue: selectedRadio,
                          activeColor: selectedRadio == 1
                              ? Colors.green // Change color if selected
                              : null,
                          onChanged: (val) {
                            setState(() {
                              selectedRadio = val as int;
                            });
                            // Navigate to another page here
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CollegeListScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("icons/setting.png"),
                        Text("Management",  style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0,
                            color: Colors.black,
                            letterSpacing: .5,
                          ),
                        ),),
                        Radio(
                          value: 1,
                          groupValue: selectedRadio,
                          activeColor: selectedRadio == 1
                              ? Colors.green // Change color if selected
                              : null,
                          onChanged: (val) {
                            setState(() {
                              selectedRadio = val as int;
                            });
                            // Navigate to another page here
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CollegeListScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}