import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'medicines.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

List image = [
  'assets/images/medical_bag.png',
  'assets/images/medicine.png',
  'assets/images/labtest.png',
  'assets/images/health.png',
];
List image1 = [
  'assets/images/medicin1.png',
  'assets/images/medicin2.png',
  'assets/images/medicin3.png',
];

List name = [
  'Consultation',
  'Medicines',
  'Lab Test',
  'Health',
];
List name1 = [
  'Multi Vitamins',
  'Thayrosafe',
  'Dolo',
];
List detils1 = [
  '90 pills',
  '180 pills',
  '650 pills',
];

List price1 = [
  '\$217',
  '\$342',
  '\$120',
];
List price2 = [
  '\$287',
  '\$392',
  '\$250',
];

class _homeState extends State<home> {
  int counter = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.sort,
                              size: 25,
                              color: Colors.teal,
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Online\nPharmacy",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: -50,
                right: -50,
                child: Image.asset(
                  'assets/images/medicine-removebg-preview.png',
                  height: 250,
                  width: 250,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
                  margin: EdgeInsets.only(left: 20),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shop by Category',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Icon(
                  Icons.linear_scale,
                  color: Colors.black,
                  size: 27,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  4,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          counter = index;
                        });
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 90,
                            width: 87,
                            decoration: BoxDecoration(
                              color: counter == index
                                  ? Color(0xfffd8c72)
                                  : Color(0xfff4d4ad),
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                            ),
                            child: Center(
                              child: Image.asset(
                                image[index],
                                height: 60,
                                width: 60,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            name[index],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Products',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Icon(
                  Icons.linear_scale,
                  color: Colors.black,
                  size: 27,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => medicines(),
                      ));
                },
                child: Row(
                  children: List.generate(
                    3,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Container(
                        height: 250,
                        width: 170,
                        decoration: BoxDecoration(
                          color: Color(0xfff4d4ad),
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  like(),
                                ],
                              ),
                              Center(
                                child: Image.asset(
                                  image1[index],
                                  height: 120,
                                  width: 120,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
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
                                height: 5,
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
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class like extends StatefulWidget {
  const like({Key? key}) : super(key: key);

  @override
  State<like> createState() => _likeState();
}

class _likeState extends State<like> {
  bool like = false;
  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () {
        setState(() {
          like = !like;
        });
      },
      child: Icon(
        like == true ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
        size: 21,
      ),
    );
  }
}
