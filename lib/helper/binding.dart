


import 'package:flutter_appgooglesign/core/view_model/auth_view_model.dart';
import 'package:get/get.dart';

class binding extends  Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => AuthViewModel());



  }

}