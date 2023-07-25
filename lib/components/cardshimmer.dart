import 'package:beebag/components/item_data.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class VoucherCardShimmer extends StatefulWidget {
  const VoucherCardShimmer({super.key});

  @override
  State<VoucherCardShimmer> createState() => _VoucherCardShimmerState();
}

class _VoucherCardShimmerState extends State<VoucherCardShimmer> {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
       baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 0),
        itemCount: voucherItems.length,
        itemBuilder: (context, index) =>  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              Container(
                //leading card logo
                margin: EdgeInsets.all(1),
                height: 100,
                width: 85,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              Expanded(
                child: Container(
                  //details container next to logo
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        //voucher name
                        color: Colors.white,
                        constraints: BoxConstraints(maxHeight: 25),
                        margin: EdgeInsets.only(
                            right: 40, left: 10, top: 10, bottom: 15),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  color: Colors.white,
                                  constraints: BoxConstraints(
                                    maxHeight: 14,
                                    maxWidth: 100,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  color: Colors.white,
                                  constraints: BoxConstraints(
                                    maxHeight: 14,
                                    maxWidth: 130,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
