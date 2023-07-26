import 'package:beebag/pages/edit_profile.dart';
import 'package:beebag/pages/reward_page.dart';
import 'package:beebag/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:beebag/components/bottom_nav.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    var _selectedIndex = 0 ;
    Color pumpkin = const Color(0xFFFC8019); 

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: BottomNav(currentIndex: 0,),
        body: Stack(
          children:[ SingleChildScrollView(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),

            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  color: Colors.amber[10],
                  child: Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding:
                              const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                          height: 150,
                          child: Image.asset(
                            'assets/images/Male Portrait.png',
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'John Doe',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w700),
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Color.fromRGBO(253, 232, 191,1),),
                                  child: Row(
                                    children: [
                                      Image.asset("assets/images/Bee Points Icon.png",width: 30,),
                                      Text(
                                        '2,058',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color:  Color.fromRGBO(253, 232, 191,1),),
                                  child: Row(
                                    children: [
                                      Image.asset("assets/images/Scans Icon.png",width: 30,),
                                      Text(
                                        '124',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: GestureDetector(
                            
                           child: Image.asset("assets/images/Edit Profile Button.png",width: 40,),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => EditProfile()));
                            },
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      child: Image.asset("assets/images/My Vouchers Button.png")
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      child: Image.asset("assets/images/Beebag FAQ Button.png",)
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        'Activities',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        border: Border.all(
                          color: const Color.fromARGB(31, 100, 103, 103),
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: Column(
                        children: [
                          ListTile(
                             dense: true,
                            leading: Image.asset("assets/images/Last Visited Icon.png",width: 30,),
                            title: Text('Last Visited',style: TextStyle(fontSize: 16),),
                            trailing: Icon(Icons.navigate_next_rounded),
                          ),
                          Divider(
                            thickness: 1,
                            color: Colors.grey[300],
                            indent: 20,
                            endIndent: 20,
                          ),
                          ListTile(
                             dense: true,
                            leading: Image.asset("assets/images/Bee Point History Icon.png",width: 30,),
                            title: Text('Bee Point History',style: TextStyle(fontSize: 16),),
                            trailing: Icon(Icons.navigate_next_rounded),
                          ),
                          Divider(
                            thickness: 1,
                            color: Colors.grey[300],
                            indent: 20,
                            endIndent: 20,
                          ),
                         ListTile(
                            dense: true,
                            leading: Image.asset("assets/images/Voucher History Icon.png",width: 30,),
                            title: Text('Voucher History',style: TextStyle(fontSize: 16),),
                            trailing: Icon(Icons.navigate_next_rounded),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left:25),
                      child: Text(
                        'Others',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        border: Border.all(
                          color: const Color.fromARGB(31, 100, 103, 103),
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: Column(
                        children: [
                          const ListTile(
                            leading: Icon(
                              Icons.feedback,
                              color: Colors.black,
                            ),
                            title: Text('Feed Back',style: TextStyle(fontSize: 16),),
                            trailing: Icon(Icons.navigate_next_rounded),
                          ),
                          Divider(
                            thickness: 1,
                            color: Colors.grey[300],
                            indent: 20,
                            endIndent: 20,
                          ),
                          ListTile(
                            leading: Image.asset("assets/images/Logout Icon.png",width: 30,),
                            title: Text('Log Out',style: TextStyle(fontSize: 16),),
                            trailing: Icon(Icons.navigate_next_rounded),
                          ),
                          
                        ],
                      ),
                    ),
                  
                  ]),
                ),
              
              ),
            ),
          ),
     
        ]),
        
      ),
    );
  }

  
}



//BOTTOM NAVIGATION BAR WITH FLUTTER ICONS
// class BottomNavigator extends StatefulWidget {
//   const BottomNavigator({super.key});
  
//   @override
//   State<BottomNavigator> createState() => _BottomNavigatorState();
// }

// class _BottomNavigatorState extends State<BottomNavigator> {
//     int _selectedIndex = 0;
//     Color pumpkin = Color(0xFFFC8019);
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//                   type: BottomNavigationBarType.fixed,
//                   currentIndex: _selectedIndex,
//                   onTap: _onItemTapped,
//                   selectedItemColor:pumpkin,
//                   unselectedItemColor: Colors.grey,
//                   selectedIconTheme: IconThemeData(
//                     size: 50,
//                     grade: 34,
//                   ),
//                   items: const <BottomNavigationBarItem>[
//                     BottomNavigationBarItem(
//                       icon: Icon(Icons.home),
//                       label: 'Home',
//                     ),
//                     BottomNavigationBarItem(
//                       icon: Icon(Icons.card_giftcard),
//                       label: 'Rewards',
//                     ),
//                     BottomNavigationBarItem(
//                       icon: Icon(Icons.qr_code),
//                       label: 'Scan',
//                     ),
//                     BottomNavigationBarItem(
//                       icon: Icon(Icons.timeline),
//                       label: 'Activity',
//                     ),
//                     BottomNavigationBarItem(
//                       icon: Icon(Icons.account_circle),
//                       label: 'Account',
//                     ),
//                   ],
//                 );
//   }
// }


