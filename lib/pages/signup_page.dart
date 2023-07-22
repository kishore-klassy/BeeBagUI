import 'package:beebag/pages/homepage.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  Color pumpkin = Color(0xFFFC8019);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20),
          child: Container(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, 
                
                children: [
              IconButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage())),
                icon: Icon(
                  Icons.arrow_back,
                  size: 30,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Image.asset(
                  "assets/images/beebag_logo.jpeg",
                  height: 300,
                  width: 300,
                ),
              ),
              Text(
                "Sign Up",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
              ),
              Container(
                margin: EdgeInsets.only(right: 30, top: 15),
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(255, 224, 152, 74), width: 3),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.amber[50]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sign up with ",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      "assets/images/google.png",
                      width: 40,
                      height: 40,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 30, top: 15),
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(255, 224, 152, 74), width: 3),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.amber[50]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sign up with ",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      "assets/images/apple.png",
                      width: 40,
                      height: 40,
                    )
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
