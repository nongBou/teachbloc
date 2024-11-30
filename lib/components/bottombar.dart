import 'package:day4/view/home/my_home_page.dart';
import 'package:flutter/material.dart';

class CustomBottombar extends StatefulWidget {
  const CustomBottombar({super.key});

  @override
  State<CustomBottombar> createState() => _CustomBottombarState();
}

class _CustomBottombarState extends State<CustomBottombar> {
  int currentindex = 0;
  List bodys = [
    MyHomePage(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodys[currentindex],
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.blue,
          backgroundColor: Colors.white,
          onTap: (value) {
            setState(() {
              currentindex = value;
            });
          },
          currentIndex: currentindex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.history,
                ),
                label: 'Order'),
          ]),
    );
  }
}
