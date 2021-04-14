import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appgooglesign/view/auth/Login_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'helper/binding.dart';






void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Myapp());

}


class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: binding(),
        home: Login_Screen()
    );
  }

}