// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/screens/search.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _HomeState();
}

class _HomeState extends State<Search> {
  List Filter = ['Filter', 'Technology', 'Finance', 'Arts', 'Sport'];

  final NavList = [
    {"name": "Home", "image": "assets/Icons/home.svg"},
    {"name": "Favorite", "image": "assets/Icons/heart.svg"},
    {"name": "Profile", "image": "assets/Icons/profile.svg"}
  ];

  int _currentIndex = 0;

  void _onFilterTap (){
    showModalBottomSheet(context: context, builder: (context) {
      return SizedBox(
        height: 315,
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(left: 20,top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Filter",style: TextStyle(fontFamily: 'new2',fontSize: 25,fontWeight:FontWeight.bold ),),
                  Spacer(),
                  Container(
                    width: 120,
                    height: 40,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      border: Border.all() ,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                            width: 40,
                            height: 17,
                            child: SvgPicture.asset("assets/Icons/reset.svg")),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                            child: Text("Reset",style: TextStyle(fontFamily: 'new2',fontSize: 17),))
                      ],
                    ),
                  )
                ],
              ),

              Container(
                margin: EdgeInsets.only(top: 10,bottom: 10),
                child: Text("Sort By",style: TextStyle(fontFamily: 'new2',fontSize: 18),),
              ),

              Row(
                children: [
                  Container(
                    width: 120,
                    height: 40,
                    margin: EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26),
                      borderRadius: BorderRadius.circular(30),
                    ),

                    child: Center(child: Text("Recommended",style: TextStyle(fontFamily: 'new2'),)),
                  ),

                  Container(
                    width: 100,
                    height: 40,
                    margin: EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26),
                      borderRadius: BorderRadius.circular(30),
                    ),

                    child: Center(child: Text("Latest",style: TextStyle(fontFamily: 'new2'),)),
                  ),

                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26),
                      borderRadius: BorderRadius.circular(30),
                    ),

                    child: Center(child: Text("Most Viewed",style: TextStyle(fontFamily: 'new2'),)),
                  ),

                ],
              ),

              Row(
                children: [
                  Container(
                    width: 120,
                    height: 40,
                    margin: EdgeInsets.only(top: 5,right: 5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26),
                      borderRadius: BorderRadius.circular(30),
                    ),

                    child: Center(child: Text("Most Viewed",style: TextStyle(fontFamily: 'new2'),)),
                  ),
                  Container(
                    width: 120,
                    height: 40,
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26),
                      borderRadius: BorderRadius.circular(30),
                    ),

                    child: Center(child: Text("Following",style: TextStyle(fontFamily: 'new2'),)),
                  ),
                ],
              ),

              Spacer(),

              Container(
                width: double.infinity,
                height: 48,
                margin: EdgeInsets.only(bottom: 20, left: 10, right: 25),
                child: ElevatedButton(
                  onPressed: () {

                  },
                  child: Text(
                    "SAVE",
                    style: TextStyle(fontFamily: 'new2', color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffFF464F),
                  ),
                ),
              ),


            ],
          ),

        ),
      );

    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.all(25),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 10),
                      width: 380,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          hintText: "Doge coin to the Moon...",
                          hintStyle:
                          TextStyle(fontSize: 15, color: Color(0xff818181)),
                          suffixIcon: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.cancel_rounded)),
                        ),
                      ),

                    ),
                  ],
                ),
                Row(
                  children: [

                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Filter.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentIndex = index;
                            if (Filter[index] == 'Filter') {
                              _onFilterTap();
                            }
                          });
                        },
                        child: Container(
                          width: 100,
                          height: 50,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: _currentIndex == index
                                  ? Color(0xffFF3A44)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: Color(0xffF0F1FA), width: 3)),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (index == 0) ...[
                                  Icon(
                                    Icons.filter_list,
                                    color: _currentIndex == index
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                  SizedBox(width: 5),
                                ],
                                Text(
                                  Filter[index],
                                  style: TextStyle(
                                      fontFamily: 'new2',
                                      color: _currentIndex == index
                                          ? Colors.white
                                          : Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 128,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    image: DecorationImage(
                      image: AssetImage('assets/image/2.jfif'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(0),
                        height: 125,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                "5 things to know about the 'conundrum' of lupus",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'new'),
                              ),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    "Matt Villano",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'new2',
                                        fontSize: 15),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    "Sunday, 9 May 2021",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'new2',
                                        fontSize: 15),
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
                Container(
                  width: double.infinity,
                  height: 128,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    image: DecorationImage(
                      image: AssetImage('assets/image/3.jfif'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(0),
                        height: 125,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 0),
                              child: Text(
                                "4 ways families can ease anxiety together",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'new'),
                              ),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    "Zain Korsgaard",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'new2',
                                        fontSize: 15),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    "Sunday, 9 May 2021",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'new2',
                                        fontSize: 15),
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
                Container(
                  width: double.infinity,
                  height: 128,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    image: DecorationImage(
                      image: AssetImage('assets/image/4.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(0),
                        height: 125,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                "What to do if you're planning or attending a wedding during the pandemic",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'new'),
                              ),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    "Zain Korsgaard",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'new2',
                                        fontSize: 15),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    "Sunday, 9 May 2021",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'new2',
                                        fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
