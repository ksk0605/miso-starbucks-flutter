import 'package:flutter/material.dart';

/// 첫 번째 페이지
class MisoFirstPage extends StatelessWidget {
  const MisoFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: Color(0xff1D4CEC)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              '대한민국 1등 홈서비스',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 30,
              ),
            ),
            Text(
              '미소를 만나보세요!',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 180,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(50),
                  right: Radius.circular(50),
                ),
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                  size: 30,
                  color: Color.fromARGB(255, 38, 103, 240),
                ),
                label: Text(
                  "예약하기",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 38, 103, 240),
                  ),
                ),
              ),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.fromLTRB(2, 0, 2, 0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 38, 103, 240),
                borderRadius: BorderRadius.all(Radius.circular(3)),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  '서비스 상세정보',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
