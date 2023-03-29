import 'package:flutter/material.dart';

import 'componens/app_drawer.dart';
import 'componens/body.dart';
class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("اضافة مهماتي"),
      actions: [
        PopupMenuButton(icon:Icon(Icons.more_vert,),
        itemBuilder: (_)=>[
          PopupMenuItem(child: Text("المهمات المنجزه"),),
          PopupMenuItem(child: Text(" جميع المهمات"),),
        ],
        )
      ],
      ),
      body: Body(),
      drawer: AppDrawer(),
    );
  }
}
