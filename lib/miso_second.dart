import 'package:flutter/material.dart';

/// 두 번째 페이지
class MisoSecondPage extends StatelessWidget {
  const MisoSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
            ),
            Text(
              '예약내역',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Icon(
                  Icons.error,
                  color: Color(0xff1D4CEC),
                ),
                Text(
                  '    예약된 서비스가 아직 없어요. 지금 예약해보세요!',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            Divider(
              thickness: 1,
            ),
            Spacer(),
            Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(2, 0, 2, 0),
              decoration: BoxDecoration(
                color: Color(0xff4170F2),
                borderRadius: BorderRadius.all(Radius.circular(3)),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  '예약하기',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
