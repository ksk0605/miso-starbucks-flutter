import 'package:flutter/material.dart';

/// 네 번째 페이지
class MisoFourthPage extends StatelessWidget {
  const MisoFourthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.symmetric(vertical: 150, horizontal: 30),
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          '나의 정보',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 30,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          '010-9999-9999',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 40,
        ),
        ListTile(
          leading: Icon(
            Icons.home_outlined,
            color: Colors.black,
            size: 30,
          ),
          title: Text(
            '주소 관리',
            style: TextStyle(fontSize: 20),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.credit_card_outlined,
            color: Colors.black,
            size: 30,
          ),
          title: Text(
            '결제 수단 관리',
            style: TextStyle(fontSize: 20),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.volume_mute_outlined,
            color: Colors.black,
            size: 30,
          ),
          title: Text(
            '공지사항',
            style: TextStyle(fontSize: 20),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.help_outline,
            color: Colors.black,
            size: 30,
          ),
          title: Text(
            '문의사항',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ]),
    ));
  }
}
