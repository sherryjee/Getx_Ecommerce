import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appgooglesign/view/auth/Login_screen.dart';

import 'package:get/get.dart';

class Homeview extends StatelessWidget {

  FirebaseAuth _auth =FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home view")

      ),
      body: Center(

        child: FlatButton(
          child: Text("Logout button"),
          onPressed: (){
            _auth.signOut();
            Get.offAll(Login_Screen());
          }

          ,

        ),
      )
    );
  }
}
