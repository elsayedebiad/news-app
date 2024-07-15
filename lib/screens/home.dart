// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/screens/person.dart';
import 'package:news_app/screens/search.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List data = ['Healthy', 'Technology', 'Finance', 'Arts', 'Sport'];

  final NavList = [
    {"name": "Home", "image": "assets/Icons/home.svg"},
    {"name": "Favorite", "image": "assets/Icons/heart.svg"},
    {"name": "Profile", "image": "assets/Icons/profile.svg"}
  ];

  int _currentIndex = 0;
  int _ListIndex = 0;

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
                      margin: EdgeInsets.only(left: 10, top: 10),
                      width: 345,
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
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Search(),));
                            },
                              child: Icon(Icons.search)),
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 40,
                      margin: EdgeInsets.only(top: 10),
                      child: SvgPicture.asset(
                        "assets/Icons/Frame 1.svg",
                        width: 33,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20),
                      child: Text(
                        "Latest News",
                        style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'new',
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        "See All",
                        style: TextStyle(
                            fontFamily: 'new2',
                            color: Color(0xff0080FF),
                            fontSize: 17),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward),
                        color: Color(0xff0080FF),
                      ),
                    )
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => PersonOne(),));
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          width: 375,
                          height: 270,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/image/first.png"),
                                fit: BoxFit.fitWidth),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 100,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Text(
                                  "by Ryan Browne",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'new2',
                                      fontSize: 15),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Text(
                                  "Crypto investors should be prepared to lose all their money, BOE governor says",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'new',
                                      fontSize: 18),
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                color: Colors.black26,
                                width: double.infinity,
                                margin: EdgeInsets.only(left: 5, right: 5),
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  "  I’m going to say this very bluntly again,” he added."
                                  " “ Buy   them only if you’re prepared to lose all your money.  ",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        width: 380,
                        height: 270,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/image/first.png"),
                              fit: BoxFit.fitWidth),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text(
                                "by Ryan Browne",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'new2',
                                    fontSize: 15),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text(
                                "Crypto investors should be prepared to lose all their money, BOE governor says",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'new',
                                    fontSize: 18),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5, right: 5),
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "  I’m going to say this very bluntly again,” he added."
                                " “ Buy   them only if you’re prepared to lose all your money.  ",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentIndex = index;
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
                              child: Text(
                            data[index],
                            style: TextStyle(
                                fontFamily: 'new2',
                                color: _currentIndex == index
                                    ? Colors.white
                                    : Colors.black),
                          )),
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
            Positioned(
              bottom: 120,
              left: 35,
              child: Container(
                width: 350,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(NavList.length, (index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _ListIndex = index;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            NavList[index]['image']!,
                            width: 35,
                            color:
                                _ListIndex == index ? Colors.red : Colors.grey,
                          ),
                          Text(
                            NavList[index]['name']!,
                            style: TextStyle(
                              fontFamily: 'new2',
                              color: _ListIndex == index
                                  ? Colors.red
                                  : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
