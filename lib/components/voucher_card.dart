import 'package:flutter/material.dart';

class VoucherCard extends StatelessWidget {
  final String voucherName;
  final String logoUrl;
  final String minSpend;
  final String validity;
  final String price;
  const VoucherCard(
      {super.key,required this.voucherName,required this.logoUrl,required this.minSpend,required this.validity,required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 4),
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Color.fromRGBO(225, 228, 223, 1),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black
                .withOpacity(0.2), // Adjust the color and opacity of the shadow
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 2), // The offset of the shadow from the image
          ),
        ],
      ),
      child: Row(
        children: [
          //logo
          Container(
            margin: EdgeInsets.all(1),
          
            height: 100,
            width: 85,
            child: Image.asset("${logoUrl}"),
          ),
          Container(
            color: Color.fromRGBO(225, 228, 223, 1),
            width: 2,
            height: 90,
            margin: EdgeInsets.only(right: 5),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${voucherName}",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                              "Min. Spend:${minSpend}",
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Valid till: ${validity}",
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Buy",
                                style: TextStyle(fontSize: 12),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 90,
                                height: 30,
                                padding: EdgeInsets.symmetric(vertical: 5,horizontal: 3),
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(248, 186, 93, 1),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Row(children: [
                                  Text(
                                    "  ${price}",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Image.asset(
                                    "assets/images/Bee Points Icon.png",
                                    height: 60,
                                  ),
                                ]),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
