import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:beebag/components/item_data.dart';
import 'package:beebag/components/voucher_card.dart';
import 'package:beebag/components/cardshimmer.dart';
import 'package:beebag/components/bottom_nav.dart';
class RewardPage extends StatefulWidget {
  RewardPage({Key? key}) : super(key: key);

  @override
  State<RewardPage> createState() => _RewardPageState();
}

class _RewardPageState extends State<RewardPage> {
  bool isLoading = true; // Set to true initially to show the shimmer effect

  Future<void> loadData() async {
    await Future.delayed(Duration(seconds: 2)); // Simulating data loading delay
    setState(() => isLoading = false);
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    final VoucherCardShimmer voucherCardShimmer = VoucherCardShimmer();

    return Scaffold(
     bottomNavigationBar:  BottomNav(currentIndex: 3,),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
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
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 239, 218, 169),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(children: [
                        Image.asset(
                          "assets/images/Bee Points Icon.png",
                          height: 60,
                        ),
                        const Text(
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
              padding: const EdgeInsets.only(
                  bottom: 10, top: 5, left: 30, right: 30),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Color.fromARGB(255, 226, 222, 222),
                          width: 5))),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: const Text("All",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400)),
                  ),

                  Center(
                    child: Container(
                      color: const Color.fromRGBO(225, 228, 223, 1),
                      width: 2,
                      height: 100,
                    ),
                  ),

                  //divider
                  const Text(
                    "Nearby",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  )
                ],
              ),
            ),

            Expanded(
              child: isLoading
                  ? voucherCardShimmer // Show shimmer effect while loading
                  : ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      itemCount: voucherItems.length, // Replace with your actual data
                      itemBuilder: (context, index) {
                        var currentItem = voucherItems[index]; // Replace with your actual data
                        return VoucherCard(
                          // Replace with your actual VoucherCard widget
                          logoUrl: "${currentItem.logoUrl}",
                          minSpend: "${currentItem.minSpend}",
                          price: "${currentItem.price}",
                          validity: "${currentItem.validity}",
                          voucherName: "${currentItem.voucherName}",
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }

 
}

