import 'package:beebag/pages/edit_profile.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              color: Colors.amber[50],
              child: Column(children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        height: 150,
                        child: Image.asset(
                          'assets/images/man.png',
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'John Doe',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w700),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.amber[600]),
                                child: Row(
                                  children: [
                                    Icon(Icons.diamond),
                                    Text(
                                      '2,058',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.amber[600]),
                                child: Row(
                                  children: [
                                    Icon(Icons.shopping_bag_rounded),
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
                      IconButton(
                        padding: EdgeInsets.only(left: 30),
                        icon: Icon(Icons.edit_document),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditProfile()));
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    decoration: BoxDecoration(
                      color: Colors.amber[300],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'My Vouchers',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w700),
                        ),
                        Container(
                          color: Colors.white,
                          height: 60,
                          alignment: Alignment.centerRight,
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          child: Container(
                            child: Image.asset('assets/images/gift.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    decoration: BoxDecoration(
                      color: Colors.amber[300],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'How Does BeeBag Work?',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        Container(
                          color: Colors.white,
                          height: 60,
                          alignment: Alignment.centerRight,
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          child: Container(
                            child: Image.asset('assets/images/gift.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Activities',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.amber[100],
                    border: Border.all(
                      color: Color.fromARGB(31, 100, 103, 103),
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.store_mall_directory_rounded,
                          color: Colors.black,
                        ),
                        title: Text('Last Visited'),
                        trailing: Icon(Icons.navigate_next_rounded),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey[300],
                        indent: 20,
                        endIndent: 20,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.store_mall_directory_rounded,
                          color: Colors.black,
                        ),
                        title: Text('Bee Point History'),
                        trailing: Icon(Icons.navigate_next_rounded),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey[300],
                        indent: 20,
                        endIndent: 20,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.store_mall_directory_rounded,
                          color: Colors.black,
                        ),
                        title: Text('Voucher History'),
                        trailing: Icon(Icons.navigate_next_rounded),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Others',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.amber[100],
                    border: Border.all(
                      color: Color.fromARGB(31, 100, 103, 103),
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.store_mall_directory_rounded,
                          color: Colors.black,
                        ),
                        title: Text('Feed Back'),
                        trailing: Icon(Icons.navigate_next_rounded),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey[300],
                        indent: 20,
                        endIndent: 20,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.store_mall_directory_rounded,
                          color: Colors.black,
                        ),
                        title: Text('Log Out'),
                        trailing: Icon(Icons.navigate_next_rounded),
                      ),
                    ],
                  ),
                ),
                BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  currentIndex: _selectedIndex,
                  onTap: _onItemTapped,
                  selectedItemColor: Colors.amber,
                  unselectedItemColor: Colors.grey,
                  selectedIconTheme: IconThemeData(
                    size: 50,
                    grade: 34,
                  ),
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.card_giftcard),
                      label: 'Rewards',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.qr_code),
                      label: 'Scan',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.timeline),
                      label: 'Activity',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.account_circle),
                      label: 'Account',
                    ),
                  ],
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
