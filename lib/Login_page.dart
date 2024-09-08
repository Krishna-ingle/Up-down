import 'dart:ui';

import 'package:demo/registration_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class LoginPage extends StatefulWidget{
  static const background_color = Color(0xff40BABE);
  static const logo_background_color = Color(0xBDDBF3FF);
  @override
  State<LoginPage> createState() => _LoginPage();


}

class _LoginPage extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    var first_block =Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Already\nhave an\naccount ? ',
          style: TextStyle(
            fontSize: 30.0,
            color: LoginPage.background_color,
            fontWeight: FontWeight.bold
          ),
          ),

           Container(
             width: 180,
             height: 180,
             decoration: const BoxDecoration(
               color: LoginPage.background_color,
               borderRadius: BorderRadius.only(
                 topRight: Radius.circular(20.0),
                 bottomLeft: Radius.circular(90.0),
                 topLeft: Radius.circular(90.0),
                 bottomRight: Radius.circular(90.0)
               )
             ),
             child: Image.asset('assets/images/updown_loginPage.png',
                ),
           ),
        ],
      ),
    );
    var userInput_block = Container(
      margin: const EdgeInsets.only(top: 80.0,left: 20.0,right: 20.0),
      child: Column(
      children: [
         TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(

              ),
              labelText: 'Username',
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: LoginPage.background_color)
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: LoginPage.background_color)
              ),

            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30.0,bottom: 60.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: LoginPage.background_color)
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: LoginPage.background_color),

                ),
              ),
               ),
          ),

        new SizedBox(
          width: 500,
           height: 50,
           child:  ElevatedButton(
            onPressed: (){}, child:Text("Sing in"),
           style: ElevatedButton.styleFrom(
             backgroundColor: LoginPage.background_color,
             foregroundColor: Colors.white,
             textStyle: TextStyle(

               color: Colors.white,
               fontSize: 18

             )
           ),),


        ),
        Container(
          margin: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('don\'t have account?',),
                GestureDetector(
                    child: Text(' Register',style: TextStyle(
                        color: LoginPage.background_color),
                    ),
                  onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:
                          (BuildContext context)=>RegistrationPage()));
                  },
                ),
              ],
            )),

        Container(
          margin: const EdgeInsets.only(top: 30),
          child: Divider(

            color: LoginPage.background_color,
          ),
        )

      ],
      ),
    );
    var socialMedia = Container(
      margin: const EdgeInsets.only(top: 20 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: LoginPage.logo_background_color,
                ),
                child: Icon(Icons.camera, color: LoginPage.background_color,),
                alignment: Alignment.center,

              ),
              Container(
                margin: const EdgeInsets.only(left: 10,right: 10),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:LoginPage.logo_background_color ,
                ),
                child: Icon(Icons.face, color: LoginPage.background_color,),
                alignment: Alignment.center,

              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: LoginPage.logo_background_color,
                ),
                child: Icon(Icons.camera, color:LoginPage.background_color,),
                alignment: Alignment.center,



              ),
            ],
          )
      );


    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(' '),
       backgroundColor: Colors.white,
      ),
      body:
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              first_block,
              userInput_block,
              socialMedia
            ],
          ),
        )
    );
  }
}