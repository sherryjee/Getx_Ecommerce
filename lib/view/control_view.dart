import 'package:flutter/material.dart';
import 'package:flutter_appgooglesign/core/view_model/auth_view_model.dart';
import 'package:flutter_appgooglesign/view/auth/Login_screen.dart';
import 'package:flutter_appgooglesign/view/homeview.dart';
import 'package:get/get.dart';

class Controllview extends GetWidget<AuthViewModel> {
  @override
  Widget build(BuildContext context) {
    return Obx((){
      return (Get.find<AuthViewModel>().user !=null)?Homeview():Login_Screen();



    });
  }
}
