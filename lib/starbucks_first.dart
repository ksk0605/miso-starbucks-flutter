import 'package:flutter/material.dart';

/// 첫 번째 페이지
class StarbucksFirstPage extends StatelessWidget {
  const StarbucksFirstPage({Key? key}) : super(key: key);

  /// 배경 이미지 URL
  final String backImg =
      "https://i.ibb.co/2Pz33q7/2021-12-16-12-21-42-cleanup.png";

  /// Frequency 이미지 URL
  final String frequencyImg = "https://i.ibb.co/QcVn97y/2021-12-16-1-33-11.png";

  /// 추천 메뉴
  final List<Map<String, String>> recommendMenu = const [
    {
      "name": "돌체쿠키라떼",
      "imgUrl": "https://i.ibb.co/SwGPpzR/9200000003687-20211118142543832.jpg",
    },
    {
      "name": "아이스 홀리데이 돌체 쿠키 라떼",
      "imgUrl": "https://i.ibb.co/JHVXZ72/9200000003690-20211118142702357.jpg",
    },
    {
      "name": "스노우 민트 초콜릿",
      "imgUrl": "https://i.ibb.co/M91G17c/9200000003693-20211118142933650.jpg",
    },
    {
      "name": "아이스 스노우 민트 초콜릿",
      "imgUrl": "https://i.ibb.co/jyZK4C9/9200000003696-20211118143125337.jpg",
    },
    {
      "name": "스노우 민트 초콜릿 블렌디드",
      "imgUrl": "https://i.ibb.co/DKkV0rw/9200000003699-20211118143249044.jpg",
    },
  ];

  /// 크리스마스 이벤트 이미지 URL
  final String eventImg = "https://i.ibb.co/Fb0q43T/IMG-F9-BA5-CBCB476-1.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            pinned: true,
            snap: false,
            floating: false,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                background: Stack(
                  children: [
                    Image.network(
                      backImg,
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '한 해의 마무리,\n수고 많았어요💖',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 50),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Spacer(),
                              Text(
                                '11 ★ until next Reward',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 199, 176, 121),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                width: 250,
                                height: 8,
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  child: LinearProgressIndicator(
                                    value: 0.25,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Color.fromARGB(255, 199, 176, 121)),
                                    backgroundColor: Color(0xffD6D6D6),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Text(
                            '1',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            ' /',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            ' 12 ★',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 199, 176, 121),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: Container(
                width: double.infinity,
                height: 50,
                color: Colors.white,
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.mail_outline,
                      color: Colors.grey,
                      size: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "What's New",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Icon(
                      Icons.confirmation_num_outlined,
                      color: Colors.grey,
                      size: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Coupon",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.notifications_outlined,
                      color: Colors.grey,
                      size: 32,
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
              ),
            ),
          ),
          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //     (BuildContext context, int index) {
          //       return Container(
          //         color: index.isOdd ? Colors.white : Colors.black12,
          //         height: 100.0,
          //         child: Center(
          //           child: Text('$index', textScaleFactor: 5),
          //         ),
          //       );
          //     },
          //     childCount: 20,
          //   ),
          // ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          frequencyImg,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        Text(
                          '스벅충',
                          style: TextStyle(
                            color: Color.fromARGB(255, 199, 176, 121),
                            fontWeight: FontWeight.bold,
                            fontSize: 29,
                          ),
                        ),
                        Text(
                          '님을 위한 추천 메뉴',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 29,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: recommendMenu.length,
                        itemBuilder: (context, index) {
                          final data = recommendMenu[index];
                          final name = data["name"] ?? 'name';
                          final imgUrl = data["imgUrl"] ?? 'img';
                          print(name);
                          print(imgUrl);
                          return Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: CircleAvatar(
                                      radius: 60,
                                      backgroundColor: Colors.red,
                                      backgroundImage: NetworkImage(imgUrl),
                                    ),
                                  ),
                                  Text(name),
                                ],
                              ));

                          //final imgUrl = data["imgUrl"] ?? '';
                          // return Padding(
                          //   padding: EdgeInsets.all(16),
                          //   child: Column(children: [
                          //     // CircleAvatar(
                          //     //   radius: 60,
                          //     //   backgroundColor: Colors.red,
                          //     //   backgroundImage: NetworkImage(imgUrl),
                          //     //   child: Padding(
                          //     //     padding: const EdgeInsets.all(8.0),

                          //     //     /// 이미지
                          //     //   ),
                          //     // ),
                          //     SizedBox(
                          //       width: 20,
                          //     ),
                          //     Expanded(
                          //         child: Column(
                          //       crossAxisAlignment: CrossAxisAlignment.start,
                          //       children: [
                          //         Text(
                          //           name,
                          //           style: TextStyle(
                          //             fontSize: 18,
                          //             fontWeight: FontWeight.bold,
                          //             color: Colors.black,
                          //           ),
                          //         ),
                          //         SizedBox(
                          //           height: 5,
                          //         ),
                          //       ],
                          //     ))
                          //   ]),
                          // );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        eventImg,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
