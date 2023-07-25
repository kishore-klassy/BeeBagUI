import 'package:beebag/components/cardshimmer.dart';
import 'package:beebag/pages/blank_page.dart';
import 'package:beebag/pages/homepage.dart';
import 'package:beebag/pages/reward_page.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  final currentIndex ;
  const BottomNav({Key? key,required this.currentIndex});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  late int _selectedIndex ;

    @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _selectedIndex = widget.currentIndex;
  }

  void _onItemTapped(int index) {
    setState(() {
     
      switch (index) {
        case 0:
         _selectedIndex = index;
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyHomePage()));

        case 1:
         _selectedIndex = index;
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => BlankPage()));
        case 2:
         _selectedIndex = index;
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => VoucherCardShimmer()));
        case 3:
         _selectedIndex = index;
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => RewardPage()));
        case 4:
         _selectedIndex = index;
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => BlankPage()));
      }
      ;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Calculate the screen height and width
    double screenHeight = 60;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      constraints: BoxConstraints(maxHeight: 80, maxWidth: 100),
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Positioned(
            left: 0,
            right: 0,
            bottom:
                0, // Set the bottom property to 0 to position the background image at the bottom
            child: Container(
              width: screenWidth, // Set the container width to the screen width
              height:
                  screenHeight, // Set the container height as needed for the background image
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/images/nav.png'), // Replace with the path to your background image
                    fit: BoxFit.fitHeight),
              ),
            ),
          ),
          // Bottom Navigation Bar
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              // Set the background color of the BottomNavigationBar to transparent
              unselectedItemColor: Colors.grey,
              selectedIconTheme: IconThemeData(
                size: 20,
                grade: 10,
              ),
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: _selectedIndex == 0
                      ? Image.asset(
                          'assets/images/homecl.png', // Replace with the path to your selected home icon image
                          width: 30,
                          height: 30,
                        )
                      : Image.asset(
                          'assets/images/home.png', // Replace with the path to your unselected home icon image
                          width: 30,
                          height: 30,
                          color: Colors.grey,
                        ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: _selectedIndex == 1
                      ? Image.asset(
                          'assets/images/leadercl.png', // Replace with the path to your selected rewards icon image
                          width: 30,
                          height: 30,
                        )
                      : Image.asset(
                          'assets/images/leader.png', // Replace with the path to your unselected rewards icon image
                          width: 30,
                          height: 30,
                          color: Colors.grey,
                        ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/history_1.png', // Replace with the path to your scan icon image
                    width: 70,
                    height: 60,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: _selectedIndex == 3
                      ? Image.asset(
                          'assets/images/rewardcl.png', // Replace with the path to your selected activity icon image
                          width: 30,
                          height: 30,
                        )
                      : Image.asset(
                          'assets/images/reward.png', // Replace with the path to your unselected activity icon image
                          width: 30,
                          height: 30,
                          color: Colors.grey,
                        ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: _selectedIndex == 4
                      ? Image.asset(
                          'assets/images/acpagecl.png', // Replace with the path to your selected account icon image
                          width: 30,
                          height: 30,
                        )
                      : Image.asset(
                          'assets/images/acpage.png', // Replace with the path to your unselected account icon image
                          width: 30,
                          height: 30,
                          color: Colors.grey,
                        ),
                  label: '',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
