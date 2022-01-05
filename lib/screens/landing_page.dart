import 'package:flutter/material.dart';
import 'package:traveler/screens/dashboard.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final int _numPages = 4;
  int _currentpage = 0;
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  List<Widget> _buildPageIndecator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentpage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return Container(
      margin: EdgeInsets.only(top: 395),
      child: AnimatedContainer(
        duration: Duration(microseconds: 150),
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        height: 8.0,
        width: isActive ? 50.0 : 8.0,
        decoration: BoxDecoration(
          color: isActive ? Colors.white : Color(0xFFFFFFFF),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Center(
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/backg.jpg'),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.height,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: _buildPageIndecator(),
          ),
          Container(
            margin: EdgeInsets.only(top: 435),
            child: PageView(
              physics: ClampingScrollPhysics(),
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentpage = page;
                });
              },
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 60),
                  child: Column(
                    children: [
                      Text(
                        "Get ready for your lifetime journey!",
                        style: TextStyle(
                          fontFamily: 'Pacifico-Regular',
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 40,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "We'll help you find the best experiences and adventures for new as well as professional travellers.",
                        style: TextStyle(
                          letterSpacing: 1,
                          color: Colors.white,
                          fontFamily: 'Pacifico-Regular',
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 60),
                  child: Column(
                    children: [
                      Text(
                        "Get ready for your lifetime journey!",
                        style: TextStyle(
                          fontFamily: 'Pacifico-Regular',
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 40,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "We'll help you find the best experiences and adventures for new as well as professional travellers.",
                        style: TextStyle(
                          letterSpacing: 1,
                          color: Colors.white,
                          fontFamily: 'Pacifico-Regular',
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 60),
                  child: Column(
                    children: [
                      Text(
                        "Get ready for your lifetime journey!",
                        style: TextStyle(
                          fontFamily: 'Pacifico-Regular',
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 40,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "We'll help you find the best experiences and adventures for new as well as professional travellers.",
                        style: TextStyle(
                          letterSpacing: 1,
                          color: Colors.white,
                          fontFamily: 'Pacifico-Regular',
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 60),
                  child: Column(
                    children: [
                      Text(
                        "Get ready for your lifetime journey!",
                        style: TextStyle(
                          fontFamily: 'Pacifico-Regular',
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 40,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "We'll help you find the best experiences and adventures for new as well as professional travellers.",
                        style: TextStyle(
                          letterSpacing: 1,
                          color: Colors.white,
                          fontFamily: 'Pacifico-Regular',
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 705),
            height: 100.0,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              color: Color(0xFFFC4C4E),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Dashbord(),
                  ),
                );
              },
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Pacifico-Regular',
                      fontSize: 18.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
