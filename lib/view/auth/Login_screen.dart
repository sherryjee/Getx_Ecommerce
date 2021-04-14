import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appgooglesign/constrains.dart';
import 'package:flutter_appgooglesign/core/view_model/auth_view_model.dart';
import 'package:flutter_appgooglesign/view/auth/secondscreen.dart';
import 'package:flutter_appgooglesign/view/widgets/Custom_Button.dart';
import 'package:flutter_appgooglesign/view/widgets/Custom_SocialButton.dart';
import 'package:flutter_appgooglesign/view/widgets/custom_text.dart';
import 'package:flutter_appgooglesign/view/widgets/custom_text_form_field.dart';
import 'package:get/get.dart';


class Login_Screen extends GetWidget<AuthViewModel> {
  final GlobalKey<FormState> _formKey= GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
            padding: const EdgeInsets.only(top: 20, right: 15, left: 15),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "Welcome",
                        fontSize: 30,
                        fontf: "SourceSansPro",


                      ),
                      FlatButton(
//                        color:  Color(0xffE8E8E8),
                        height: 50,
                        minWidth: 5,
                        onPressed: (){},
                        child: CustomText(

                          text: "Sign Up",
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                  CustomText(
                    text: "Sign in to continue",
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomTextFormField(
                    text: "email",
                    hint: "sandeed@gmail.com",
                    onSave: (value) {
                      controller.email=value;


                    },
                    validator: (value) {
                      if(value == null){
                        print("error");
                      }

                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CustomTextFormField(
                    text: "password",
                    hint: "***",
                    onSave: (value) {
                      controller.password=value;
                    },
                    validator: (value) {
                      if(value == null){
                        print("error");
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Row(


                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FlatButton(
                          onPressed: (){},
                          child: CustomText(
                              fontSize: 14,
                              text: 'forgot password?',
                              alignment: Alignment.topRight),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  CustomButton(
                    text: "Sign In",
                    onPress:() {
                      _formKey.currentState.save();
                     if(_formKey.currentState.validate())
                     {
                       controller.signInWithEmailAndPassword();

                     }


                    },


                    //Get.to(Second_screen()),


                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          text: "-OR-",
                          alignment: Alignment.center,
                        )
                      ],
                    ),
                  ),
                  CustomSocialbutton(text: "Google Sign In ",Onpres: (){
                    controller.googleSignInMethod();
                  },

                    ImageName: "assets/images/google.png",),
                  SizedBox(height: 20.0,),
                  CustomSocialbutton(text: "Facebook Sign In ",Onpres: (){
                    controller.facebookSignInMethod();
                  },

                    ImageName: "assets/images/facebook.png",),

                ],
              ),
            )),
      );
  }
}
