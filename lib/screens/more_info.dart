import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  Details({Key? key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  List<String> cartigories = [
    "Description",
    "Facility",
  ];
  List<String> details = [
    "The front desk officer is responsible for ushering visitors into the company. She is the first face the clients see when they come to the company for business",
    "She is the first face the clients see when they come to the company for business",
  ];

  int selectIndex = 0;
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Column(
          children: [
            Container(
              child: Center(
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/img2.jpg'),
                  height: 350,
                  width: MediaQuery.of(context).size.height,
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: 300,
          child: Container(
            height: 300,
            width: 400,
            decoration: BoxDecoration(
              color: Color(0xFFFFF5EE),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 150),
                  child: Column(
                    children: [
                      Text(
                        "Bridgetown, Barbados",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.pink,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "5.0",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.access_time_outlined,
                        color: Colors.black38,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "8 Hours",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.black38,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "150 km",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 35, top: 15),
                          child: Container(
                            height: 40,
                            width: 110,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.pink[50],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "5",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black38, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 45, top: 22),
                          child: Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.pink[100],
                            ),
                            child: Text(
                              "-",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.pink, fontSize: 20),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 110, top: 22),
                          child: Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.pink[100],
                            ),
                            child: Text(
                              "+",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.pink, fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Icon(
                        Icons.access_time_outlined,
                        color: Colors.black38,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "5 Days",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 450,
          child: Container(
            height: 600,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    itemCount: cartigories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => buildCartigories(index),
                  ),
                ),
                Container(
                  height: 130,
                  child: ListView.builder(
                    itemCount: details.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) => buildDetails(index),
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 690,
          child: Container(
            height: 95,
            width: 400,
            decoration: BoxDecoration(
              color: Color(0xFFFC4C4E),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 40),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          "\$650",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Row(
                    children: [
                      Text(
                        "Average cost",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 710,
          right: 30,
          child: Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 12, left: 25),
              child: Text(
                "Book a Tour",
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Positioned(
          top: 280,
          right: 40,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Icon(
              Icons.favorite,
              color: Colors.pink,
            ),
          ),
        ),
      ],
    ));
  }

  Widget buildCartigories(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectIndex = index;
        });
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 10, 20, 0),
            child: Column(
              children: [
                Container(
                  child: Text(
                    cartigories[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color:
                          selectIndex == index ? Colors.pink : Colors.black38,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Column(
            children: [
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(
                  horizontal: 4,
                  vertical: 3,
                ),
                decoration: BoxDecoration(
                  color: selectIndex == index
                      ? Colors.pink[400]
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildDetails(int index) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
          child: Column(
            children: [
              Container(
                child: Text(
                  details[index],
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 17,
                    height: 1.5,
                    color: selectIndex == index
                        ? Colors.black
                        : Colors.transparent,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
