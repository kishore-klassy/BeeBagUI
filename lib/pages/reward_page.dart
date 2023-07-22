import 'package:beebag/components/voucher_card.dart';
import 'package:flutter/material.dart';

class RewardPage extends StatefulWidget {
  RewardPage({super.key});

  @override
  State<RewardPage> createState() => _RewardPageState();
}

class _RewardPageState extends State<RewardPage> {
  final List<VoucherCard> voucherItems = [
    VoucherCard(
      logoUrl: "assets/images/green_mart_logo.jpg",
      minSpend: "RM50",
      price: "3,800",
      validity: "31 Dec 2022",
      voucherName: "Rm3 Voucher by Red Mart",
    ),
    VoucherCard(
      logoUrl: "assets/images/green_mart_logo.jpg",
      minSpend: "RM50",
      price: "3,800",
      validity: "3 feb 2022",
      voucherName: "Rm3 Voucher by yellow Mart",
    ),
    VoucherCard(
      logoUrl: "assets/images/green_mart_logo.jpg",
      minSpend: "RM50",
      price: "3,800",
      validity: "31 Dec 2022",
      voucherName: "Rm3 Voucher by D Mart",
    ),
    VoucherCard(
      logoUrl: "assets/images/green_mart_logo.jpg",
      minSpend: "RM50",
      price: "3,800",
      validity: "31 Dec 2022",
      voucherName: "Rm3 Voucher by Red Mart",
    ),
    VoucherCard(
      logoUrl: "assets/images/green_mart_logo.jpg",
      minSpend: "RM50",
      price: "3,800",
      validity: "31 Dec 2022",
      voucherName: "Rm3 Voucher by Red Mart",
    ),
    VoucherCard(
      logoUrl: "assets/images/green_mart_logo.jpg",
      minSpend: "RM50",
      price: "3,800",
      validity: "31 Dec 2022",
      voucherName: "Rm3 Voucher by Red Mart",
    ),
    VoucherCard(
      logoUrl: "assets/images/green_mart_logo.jpg",
      minSpend: "RM50",
      price: "3,800",
      validity: "31 Dec 2022",
      voucherName: "Rm3 Voucher by Red Mart",
    ),
    VoucherCard(
      logoUrl: "assets/images/green_mart_logo.jpg",
      minSpend: "RM50",
      price: "3,800",
      validity: "31 Dec 2022",
      voucherName: "Rm3 Voucher by Red Mart",
    ),
    VoucherCard(
      logoUrl: "assets/images/green_mart_logo.jpg",
      minSpend: "RM50",
      price: "3,800",
      validity: "31 Dec 2022",
      voucherName: "Rm3 Voucher by Red Mart",
    ),
    VoucherCard(
      logoUrl: "assets/images/green_mart_logo.jpg",
      minSpend: "RM50",
      price: "3,800",
      validity: "31 Dec 2022",
      voucherName: "Rm3 Voucher by Red Mart",
    ),
    VoucherCard(
      logoUrl: "assets/images/green_mart_logo.jpg",
      minSpend: "RM50",
      price: "3,800",
      validity: "31 Dec 2022",
      voucherName: "Rm3 Voucher by Red Mart",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: Column(children: [
            Container(
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      "assets/images/Verticle Yellow Hexagon BG.png",
                      height: 100,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      scale: double.maxFinite,
                      
                    ),
                  ),
                  Positioned(
                    left: 150,
                    bottom: 10,
                    child: Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 40,
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 239, 218, 169),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(children: [
                        Image.asset(
                          "assets/images/Bee Points Icon.png",
                          height: 60,
                        ),
                        Text(
                          " 2,058",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        )
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              padding: EdgeInsets.only(bottom: 10, top: 5, left: 30, right: 30),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Color.fromARGB(255, 226, 222, 222),
                          width: 5))),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Text("All",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400)),
                  ),
                  
                  Center(
                    child: Container(
                      color: Color.fromRGBO(225, 228, 223, 1),
                      width: 2,
                      height: 100,
                    ),
                  ),

                  //divider
                  Text(
                    "Nearby",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400,color: Colors.grey),
                  )
                ],
              ),
            ),
            Container(
              height: 600,
              child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  itemCount: voucherItems.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    for (int i = 0; i <= voucherItems.length; i++) {
                      var currentItem = voucherItems[index];
                      return VoucherCard(
                        logoUrl: "${currentItem.logoUrl}",
                        minSpend: "${currentItem.minSpend}",
                        price: "${currentItem.price}",
                        validity: "${currentItem.validity}",
                        voucherName: "${currentItem.voucherName}",
                      );
                    }
                  }),
            )
          ])),
    );
  }
}
