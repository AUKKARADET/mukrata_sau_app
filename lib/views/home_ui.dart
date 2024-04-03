// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import "package:convex_bottom_bar/convex_bottom_bar.dart";
import "package:flutter/material.dart" ;
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:mukrata_sau_app/views/about_ui.dart";
import "package:mukrata_sau_app/views/calculate_pay_bill_ui.dart";
import "package:mukrata_sau_app/views/menu_shop_ui.dart";

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {


// สร้างตัวแปรเก็บหน้าจอ (ui) ที่ใช้กับ Button
  List<Widget> _currentShow = [
    CalculatePayBillUI(),
    MenuShopUI(),
    AboutUI(),
  ];

  //

  int _currentIndex  = 1  ;






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          'Tech SAU BUFFET',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: ConvexAppBar(
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        initialActiveIndex: _currentIndex,
        backgroundColor: Colors.yellow,
        height: 65,

        items: [
          TabItem(
            icon: Icon(
              FontAwesomeIcons.moneyBill,
              color: Color.fromARGB(255, 0, 89, 255),
            ),
            title : 'คิดเงิน',
            
          ),  
          TabItem(
            icon: Icon(
              Icons.home,
              color: Color.fromARGB(255, 255, 60, 0),
            ),
            title: 'Google',
            
          ),
          TabItem(
            icon: Icon(
              FontAwesomeIcons.star,
              color: Colors.green,
            ),
            title: 'เกี่ยวกับ',
            
          ),
          
          
        ],
      ),
      body: _currentShow[_currentIndex],

    );
  }
}