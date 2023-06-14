import 'package:flutter/material.dart';

class demoo extends StatefulWidget {
  const demoo({Key? key}) : super(key: key);

  @override
  State<demoo> createState() => _demooState();
}

class _demooState extends State<demoo> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  icon: Icon(
                    Icons.add_circle_outline,
                    size: 40,
                    color: Colors.red,
                  )),
              Text(
                '$counter',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      if (counter > 0) {
                        print('yes');
                        counter--;
                      }
                    });
                  },
                  icon: Icon(
                    Icons.remove_circle_outline,
                    size: 40,
                    color: Colors.red,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
