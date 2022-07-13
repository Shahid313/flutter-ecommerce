import 'dart:developer';

import 'package:ecommerce/widgets/CategoriesWidget.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
          child: IconButton(onPressed: (){
            print('Icon Clicked');
          }, icon: Icon(Icons.sort, color: Color(0xFF4C53A5),size: 30.0,),)

        ),
        title: Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Text('DP Shop',
            style: TextStyle(color: Color(0xFF4C53A5), fontSize: 20),),
        ),
        actions: [
          Badge(
            position:BadgePosition.topStart(top: 5, start: -12),
            padding: EdgeInsets.all(7.0),
            badgeColor: Colors.red,
            badgeContent: Text('3',style: TextStyle(color:Colors.white),),
            child: InkWell(
              onTap: (){},
              child: Icon(Icons.shopping_bag_outlined, size: 23.0,color: Color(0xFF4C53A5),),
            ),
          ),
          SizedBox(width: 10.0,)
        ],
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(5, 15, 5, 0),
        decoration: BoxDecoration(
          color: Color(0xFFEDECF2),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35.0),
            topRight: Radius.circular(35.0)
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 15,),
                   Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                   child: TextFormField(
                     maxLines: null,
                     decoration: InputDecoration(
                       contentPadding:EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                         filled: true,
                         fillColor: Colors.white,
                       enabledBorder: OutlineInputBorder(
                         borderSide: const BorderSide(width: 0.0, color: Colors.white),
                         borderRadius: BorderRadius.circular(30),
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderSide: const BorderSide(width: 0.0, color: Colors.white),
                         borderRadius: BorderRadius.circular(30),
                       ),
                       hintText: 'Search...',
                         suffixIcon: Icon(
                             Icons.camera_alt,
                         ),
                     ),
                   ),),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Text('Categories',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF4C53A5)),),
              // alignment: Alignment.center,
            ),
            CategoriesWidget(),
          ],
        ),
      ),
    );
  }
}
