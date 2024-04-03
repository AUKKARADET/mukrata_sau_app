// ignore_for_file: prefer_const_constructors, prefer_final_fields

import "package:flutter/material.dart" ;

class MenuShopUI extends StatefulWidget {
  const MenuShopUI({super.key});

  @override
  State<MenuShopUI> createState() => _MenuShopUIState();
}

class _MenuShopUIState extends State<MenuShopUI> {

  // สร้า่งตัวแปรเก็บรายการเมนู
  List<String> _showMenu = [
    'assets/images/img1.png',
    'assets/images/img2.png',
    'assets/images/img3.png',
    'assets/images/img4.png',
    'assets/images/img5.png',
    'assets/images/img6.png',
    'assets/images/img7.png',
  ];
  //สร้าง list ร้านค้า

  List<String> _showShop = [
    'assets/images/shop1.png',
    'assets/images/shop2.png',
    'assets/images/shop3.png',
    'assets/images/shop4.png',
    'assets/images/shop5.png',
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
     body: Center(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*0.03,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(
              'assets/images/logo.png',
              width: MediaQuery.of(context).size.height*0.35,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.03,
          ),
          Text(
            'เมนูเด็ดสัส',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.03,
          ),

          Container(
            height: 100,
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: ListView.builder(
              itemCount: _showMenu.length, //อิ้งจำนวน ListView
              scrollDirection: Axis.horizontal, //สกอแนวนอน
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,

                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      _showMenu[index],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.03,
          ),
          Text(
            'ร้านในเครือ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.03,
          ),

          Expanded(
            child: ListView.builder(
              itemCount: _showShop.length, //อิ้งจำนวน ListView
          
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                    left: 50.0,
                    right: 50.0,
                    top: 15.0,
                    bottom: 8.0,

                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      _showShop[index],
                    ),
                  ),
                );
              },
            ),
          ),
          






        ],
      ),
     ),
    );
  }
}