import 'package:flutter/material.dart';

class PersonOne extends StatefulWidget {
  const PersonOne({super.key});

  @override
  State<PersonOne> createState() => _PersonOneState();
}

class _PersonOneState extends State<PersonOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.45,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/image/first.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 50, left: 20),
                          decoration: BoxDecoration(
                            color: Color(0xffC2B9BE),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back_ios_new),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width -
                  40, // To account for left and right padding
              height: 520,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("LONDON — Cryptocurrencies “have no intrinsic value” and people who invest in them should be prepared to lose all their money, Bank of England Governor Andrew Bailey said.")
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 400,
            left: 0,
            right: 0,
            child: Container(
              width: 400, // To account for left and right padding
              height: 200,
              margin: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                color: Color(0xffCCCBD0),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
