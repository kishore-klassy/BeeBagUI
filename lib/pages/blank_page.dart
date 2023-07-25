import 'package:beebag/components/bottom_nav.dart';
import 'package:beebag/components/cardshimmer.dart';
import 'package:flutter/material.dart';

class BlankPage extends StatefulWidget {
  const BlankPage({super.key});

  @override
  State<BlankPage> createState() => _BlankPageState();
}

class _BlankPageState extends State<BlankPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         margin: EdgeInsets.symmetric(vertical: 30,horizontal: 10),
         child: VoucherCardShimmer(),
      ),
      bottomNavigationBar: BottomNav(currentIndex: 1,),
    );
  }
}
