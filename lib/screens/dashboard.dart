import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:traveler/screens/more_info.dart';

class Dashbord extends StatefulWidget {
  Dashbord({Key? key}) : super(key: key);

  @override
  _DashbordState createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  List<String> cartigories = [
    "Popular",
    "Japan",
    "Indonesia",
    "Bahamas",
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
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: 25.0, top: 20),
          child: InkResponse(
            onTap: () {},
            child: Icon(
              Icons.dashboard_outlined,
              size: 30,
              color: Colors.black,
            ),
          ),
        ),
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "TRAVEL",
                style: TextStyle(
                  letterSpacing: 3,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Pacifico-Regular',
                  fontSize: 20,
                ),
              ),
              Text(
                "ER",
                style: TextStyle(
                  letterSpacing: 3,
                  color: Colors.pink,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Pacifico-Regular',
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 25, top: 18),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/profile.jpeg'),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        backgroundColor: Colors.white,
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              icon: Icon(Icons.home),
              title: Text("home"),
              activeColor: Colors.pink,
              inactiveColor: Colors.black38),
          BottomNavyBarItem(
              icon: Icon(Icons.notifications),
              title: Text("notifications"),
              activeColor: Colors.pink,
              inactiveColor: Colors.black38),
          BottomNavyBarItem(
              icon: Icon(Icons.favorite),
              title: Text("favorite"),
              activeColor: Colors.pink,
              inactiveColor: Colors.black38),
          BottomNavyBarItem(
              icon: Icon(Icons.person),
              title: Text("person"),
              activeColor: Colors.pink,
              inactiveColor: Colors.black38),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 15, 10, 3),
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 40,
                child: ListView.builder(
                  itemCount: cartigories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildCartigories(index),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                width: 330,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.pink[50]!.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextField(
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: Container(
                        width: 60,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      hintText: "Search...",
                      hintStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.black38,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 12),
                child: Text(
                  "Discover",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 190,
                                  width: 155,
                                  decoration: BoxDecoration(
                                    image: new DecorationImage(
                                        image: AssetImage(
                                          'assets/images/img4.jpg',
                                        ),
                                        fit: BoxFit.fill),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 110, left: 10),
                                  child: Text(
                                    "Bali",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 140, left: 10),
                                  child: Text(
                                    "Indonesia",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Positioned(
                                  top: 5,
                                  right: 6,
                                  child: Column(
                                    children: <Widget>[
                                      IconButton(
                                        icon: Icon(
                                          Icons.favorite,
                                          color: Colors.pink,
                                        ),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 270,
                                  width: 155,
                                  decoration: BoxDecoration(
                                    image: new DecorationImage(
                                        image: AssetImage(
                                          'assets/images/img3.jpg',
                                        ),
                                        fit: BoxFit.fill),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 190, left: 10),
                                  child: Text(
                                    "Manama",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 220, left: 10),
                                  child: Text(
                                    "Bahamas",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Positioned(
                                  top: 5,
                                  right: 6,
                                  child: Column(
                                    children: <Widget>[
                                      IconButton(
                                        icon: Icon(
                                          Icons.favorite,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Details(),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 190,
                                    width: 155,
                                    decoration: BoxDecoration(
                                      image: new DecorationImage(
                                          image: AssetImage(
                                            'assets/images/img2.jpg',
                                          ),
                                          fit: BoxFit.fill),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 120, left: 10),
                                    child: Text(
                                      "Bridgetown",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 150, left: 10),
                                    child: Text(
                                      "Barbados",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Positioned(
                                    top: 5,
                                    right: 6,
                                    child: Column(
                                      children: <Widget>[
                                        IconButton(
                                          icon: Icon(
                                            Icons.favorite,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {},
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 230,
                                  width: 155,
                                  decoration: BoxDecoration(
                                    image: new DecorationImage(
                                        image: AssetImage(
                                          'assets/images/img5.jpg',
                                        ),
                                        fit: BoxFit.fill),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 150, left: 10),
                                  child: Text(
                                    "Florence",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 180, left: 10),
                                  child: Text(
                                    "Italy",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Positioned(
                                  top: 5,
                                  right: 6,
                                  child: Column(
                                    children: <Widget>[
                                      IconButton(
                                        icon: Icon(
                                          Icons.favorite,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 200,
                                  width: 155,
                                  decoration: BoxDecoration(
                                    image: new DecorationImage(
                                        image: AssetImage(
                                          'assets/images/img4.jpg',
                                        ),
                                        fit: BoxFit.fill),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 130, left: 10),
                                  child: Text(
                                    "Rome",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 160, left: 10),
                                  child: Text(
                                    "Italy",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Positioned(
                                  top: 5,
                                  right: 6,
                                  child: Column(
                                    children: <Widget>[
                                      IconButton(
                                        icon: Icon(
                                          Icons.favorite,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 230,
                                  width: 155,
                                  decoration: BoxDecoration(
                                    image: new DecorationImage(
                                        image: AssetImage(
                                          'assets/images/img1.jpg',
                                        ),
                                        fit: BoxFit.fill),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 150, left: 10),
                                  child: Text(
                                    "Paris",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 180, left: 10),
                                  child: Text(
                                    "France",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Positioned(
                                  top: 5,
                                  right: 6,
                                  child: Column(
                                    children: <Widget>[
                                      IconButton(
                                        icon: Icon(
                                          Icons.favorite,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
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

  Widget buildCartigories(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectIndex = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 20),
        padding: EdgeInsets.symmetric(
          horizontal: 28,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: selectIndex == index ? Colors.pink[400] : Colors.pink[50],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          cartigories[index],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
            color: selectIndex == index ? Colors.white : Colors.pink[200],
          ),
        ),
      ),
    );
  }
}
