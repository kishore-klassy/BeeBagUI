import 'package:beebag/pages/homepage.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  EditProfile({super.key});
  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[700],
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black54,
          ),
          onPressed: () => {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyHomePage()))
          },
        ),
        title: const Text(
          "Back To Home",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black54,
            ),
            onPressed: () {
              // Implement any action when the menu icon is pressed
              // For example, you can open a menu drawer or show a popup menu
            },
          ),
        ],
      ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 40.0),
                Image.asset('assets/images/Profile.png', height: 100),
                const SizedBox(height: 20.0),
                name(),
                const SizedBox(height: 20.0),
                nickname(),
                const SizedBox(height: 20.0),
                email(),
                const SizedBox(height: 20.0),
                Dob(),
                const SizedBox(height: 20.0),
                Gender(),
                const SizedBox(height: 40.0),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: Container(
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFFFFA500),
                              Color(0xFFFF8C00),
                              Color(0xFFFF7F50),
                            ],
                          )),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(5),
                          foregroundColor: Colors.black87,
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: () => {},
                        child: const Text('Save'),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget name() => const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        decoration: InputDecoration(
          labelStyle: TextStyle(color: Colors.grey),
          labelText: 'Enter Your Name',
          prefixIcon: Icon(Icons.person),
          prefixIconColor: Colors.orangeAccent,
          //suffixIcon: Icon(Icons.clear,),
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.done,
      ),
    );
Widget nickname() => const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        decoration: InputDecoration(
          labelStyle: TextStyle(color: Colors.grey),
          labelText: 'Nick Name',
          prefixIcon: Icon(Icons.emoji_people),
          prefixIconColor: Colors.orangeAccent,
          //suffixIcon: Icon(Icons.clear),
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.done,
      ),
    );
Widget email() => const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        decoration: InputDecoration(
          labelStyle: TextStyle(color: Colors.grey),
          labelText: 'Enter your mail-id',
          hintText: 'example@gmail.com',
          prefixIcon: Icon(Icons.mail),
          prefixIconColor: Colors.orangeAccent,
          //suffixIcon: Icon(Icons.clear),
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.done,
      ),
    );
Widget Dob() => const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        decoration: InputDecoration(
          labelStyle: TextStyle(color: Colors.grey),
          labelText: 'Date of Birth',
          hintText: 'day-Month-Year',
          prefixIcon: Icon(Icons.edit_calendar),
          prefixIconColor: Colors.orangeAccent,
          suffixIcon: Icon(
            Icons.arrow_drop_down_circle_rounded,
            color: Colors.orange,
          ),
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.done,
      ),
    );
Widget Gender() => const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        decoration: InputDecoration(
          labelStyle: TextStyle(color: Colors.grey),
          labelText: 'Gender',
          prefixIcon: Icon(Icons.person_add_alt),
          prefixIconColor: Colors.orangeAccent,
          suffixIcon: Icon(
            Icons.arrow_drop_down,
            color: Colors.orange,
          ),
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.done,
      ),
    );
