import 'package:flutter/material.dart';

/// 두 번째 페이지
class StarbucksSecondPage extends StatelessWidget {
  const StarbucksSecondPage({Key? key}) : super(key: key);

  /// 카드 이미지
  final String cardImgUrl = "https://i.ibb.co/BgfYHg4/2021-12-16-1-49-51.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ))
        ],
        title: Text(
          'Pay',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: PageController(viewportFraction: 0.85),
              itemCount: 5,
              itemBuilder: ((context, index) {
                return Container(
                  margin: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 6,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.network(cardImgUrl),
                );
              }),
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.white),
            width: double.infinity,
            height: 80,
            child: Row(children: [
              Expanded(
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Coupon',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ))),
              Container(
                width: 0,
                height: 20,
                child: VerticalDivider(
                  color: Colors.grey,
                  thickness: 1.5,
                ),
              ),
              Expanded(
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'e-gift Item',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ))),
            ]),
          )
        ],
      ),
    );
  }
}
