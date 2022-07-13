import 'package:flutter/material.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,

      child: Row(
        children: <Widget>[
          for(int i=1; i<8; i++)
          Container(
            padding: EdgeInsets.symmetric(horizontal: 17, vertical: 3),
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset("images/${i}.png", width: 27, height: 27,),
                SizedBox(width: 4,),
                Text('Sandal', style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold, color: Color(0xFF4C53A5)),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
