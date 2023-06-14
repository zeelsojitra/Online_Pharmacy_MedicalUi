import 'package:flutter/material.dart';
import 'package:online_pharmacy/main.dart';

import 'medicines.dart';

class detils extends StatefulWidget {
  const detils({Key? key}) : super(key: key);

  @override
  State<detils> createState() => _detilsState();
}

class _detilsState extends State<detils> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4d4ad),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => medicines(),
                          ));
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.cyanAccent,
                      size: 25,
                    ),
                  ),
                  Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.cyanAccent,
                    size: 25,
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/images/medicin1.png',
              height: 300,
              width: 250,
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Multi Vitamin',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '90 pills',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/rating2.png',
                                      width: 100,
                                      height: 100,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '4.0',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        counter++;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.add_circle_outline,
                                      color: Colors.red,
                                      size: 30,
                                    )),
                                Text(
                                  '$counter',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {
                                      if (counter > 1) {
                                        setState(() {
                                          counter--;
                                        });
                                      }
                                    },
                                    icon: Icon(
                                      Icons.remove_circle_outline,
                                      color: Colors.red,
                                      size: 30,
                                    )),
                              ],
                            )
                          ],
                        ),
                        Text(
                          'Product Detil',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Multivitamins are used to provide vitamins that are not taken in through the diet. Multivitamins are also used to treat vitamin deficiencies caused by illness pregnancy and many other conditions.',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 19,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              '\$217',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '\$287',
                              style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Color(0xfff37e64),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25),
                                ),
                              ),
                              child: Center(
                                child: Image.asset(
                                  'assets/images/like.png',
                                  height: 20,
                                  width: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 250,
                              decoration: BoxDecoration(
                                color: Color(0xff298b8a),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25),
                                ),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Icon(
                                    Icons.shopping_cart_outlined,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Add to Basket',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
