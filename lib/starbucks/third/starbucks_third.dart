import 'package:flutter/material.dart';
import 'package:miso_starbucks/starbucks/common/data/color.dart';

/// 세 번째 페이지
class StarbucksThirdPage extends StatelessWidget {
  const StarbucksThirdPage({Key? key}) : super(key: key);

  /// 전체 메뉴
  final List<Map<String, String>> menu = const [
    {
      "ko": "추천",
      "en": "Recommend",
      "imgUrl": "https://i.ibb.co/SwGPpzR/9200000003687-20211118142543832.jpg",
    },
    {
      "ko": "리저브 에스프레소",
      "en": "Reserve Espresso",
      "imgUrl": "https://i.ibb.co/JHVXZ72/9200000003690-20211118142702357.jpg",
    },
    {
      "ko": "리저브 드립",
      "en": "Reserve Drip",
      "imgUrl": "https://i.ibb.co/M91G17c/9200000003693-20211118142933650.jpg",
    },
    {
      "ko": "콜드브루",
      "en": "ColdBrew",
      "imgUrl": "https://i.ibb.co/jyZK4C9/9200000003696-20211118143125337.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search_outlined,
                  color: Colors.black,
                ))
          ],
          title: Text(
            'Order',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.white,
          bottom: TabBar(
            labelStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            tabs: const <Widget>[
              Tab(text: '전체 메뉴'),
              Tab(text: '나만의 메뉴'),
              Tab(text: '🎂 홀케이크'),
            ],
            indicatorColor: starbucksPrimaryColor,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                final data = menu[index % 4];
                String ko = data["ko"] ?? "제목";
                String en = data["en"] ?? 'title';
                final imgUrl = data["imgUrl"] ?? "";
                return Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.red,
                      backgroundImage: NetworkImage(imgUrl),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),

                        /// 이미지
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ko,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          en,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        )
                      ],
                    ))
                  ]),
                );
              },
            ),
            Center(
              child: Text("나만의 메뉴"),
            ),
            Center(
              child: Text("홀케이크"),
            ),
          ],
        ),
      ),
    );
  }
}
