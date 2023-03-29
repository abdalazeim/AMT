import 'package:flutter/material.dart';
class Welcme extends StatelessWidget {
 final String name;
 final String avatar;
 Welcme({required this.name, required this.avatar});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(children: [Text("محترف الحاسوب ",
            style:TextStyle(color:Colors.black,
            fontWeight: FontWeight.w900,
            fontSize: 30.0),
           // Text("ttt"),
          ),
            Padding(padding: EdgeInsets.only(left: 20.0),
            child: Image(image: AssetImage('assets/icons/mh.jpg'),),
            ),
         ],),

        CircleAvatar(
          backgroundImage: AssetImage(avatar),
            ),
      ],),
    );
  }
}
