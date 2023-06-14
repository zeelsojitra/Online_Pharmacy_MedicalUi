import 'package:flutter/material.dart';

import 'detils_page.dart';
import 'home.dart';

class medicines extends StatefulWidget {
  const medicines({Key? key}) : super(key: key);

  @override
  State<medicines> createState() => _medicinesState();
}

List img = [
  'assets/images/medicin1.png',
  'assets/images/medicin2.png',
  'assets/images/medicin3.png',
  'assets/images/medicin4.png',
];

List name1 = [
  'Multi Vitamins',
  'Thayrosafe',
  'Dolo',
  'Sore Capsule',
];

List detils1 = [
  '90 pills',
  '180 pills',
  '650 pills',
  '60 Capsule',
];

List price1 = [
  '\$217',
  '\$342',
  '\$165',
  '\135',
];
List price2 = [
  '\$287',
  '\$392',
  '\$185',
  '\$165',
];

class _medicinesState extends State<medicines> {
  int like = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => home(),
                          ));
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.cyanAccent,
                      size: 25,
                    ),
                  ),
                  Text(
                    'Medicines',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.cyanAccent,
                    size: 25,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Color(0xfff4d4ad),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20)),
                          prefixIcon: Icon(
                            Icons.search_rounded,
                            color: Colors.green,
                            size: 30,
                          ),
                          hintText: 'Serch for drugs, doctor, etc...',
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        color: Color(0xff288a89),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Icon(
                        Icons.tune,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: List.generate(
                      4,
                      (index) => Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  height: 150,
                                  width: double.infinity,
                                  margin: EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xfff3d4ad),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Center(
                                        child: Image.asset(
                                          img[index],
                                          height: 120,
                                          width: 120,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 39,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              name1[index],
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              detils1[index],
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  price1[index],
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  price2[index],
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    decoration: TextDecoration
                                                        .lineThrough,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            FavouriteWidget(),
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        detils(),
                                                  ),
                                                );
                                              },
                                              child: Container(
                                                height: 50,
                                                width: 50,
                                                decoration: BoxDecoration(
                                                  color: Color(0xfff37e64),
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Icon(
                                                  Icons.add,
                                                  color: Colors.white,
                                                  size: 30,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ))
                            ],
                          )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FavouriteWidget extends StatefulWidget {
  const FavouriteWidget({Key? key}) : super(key: key);

  @override
  State<FavouriteWidget> createState() => _FavouriteWidgetState();
}

class _FavouriteWidgetState extends State<FavouriteWidget> {
  bool isFavourite = false;
  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () {
        setState(() {
          isFavourite = !isFavourite;
        });
      },
      child: Icon(
        isFavourite == true ? Icons.favorite : Icons.favorite_border,
        size: 25,
        color: Colors.red,
      ),
    );
  }
}
