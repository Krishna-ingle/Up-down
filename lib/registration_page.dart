import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homePage.dart';

class RegistrationPage extends StatefulWidget{
  static const background_color = Color(0xff40BABE);
  static const logo_background_color = Color(0xBDDBF3FF);
  @override
  State<StatefulWidget> createState()=> _RegistrationPage();

}

class _RegistrationPage  extends State<RegistrationPage>{
  final nameController=TextEditingController();
  final emailController=TextEditingController();
  final mobileController=TextEditingController();
  final sourceController=TextEditingController();
  final destinationController=TextEditingController();

  int currentStep =0;
  bool isVisible=true;
  continueStep() {
    if(currentStep<1) {
      setState(() {
        currentStep = currentStep + 1;
      });
    }
  }
  continueStop(){
    if(currentStep>0){
      setState(() {
        currentStep=currentStep-1;
      });
    }
  }
  @override
  Widget build(BuildContext context) {



    var Firstblock = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('Here\'s\nyour first\nstop with\nus!',
          style: TextStyle(
              fontSize: 30.0,
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),

        Container(
          width: 180,
          height: 180,
          decoration: const BoxDecoration(
              color: Colors.white,
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
    );
    var userInputCard= Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 450,
        margin: const EdgeInsets.only(top: 20),
        decoration: new BoxDecoration(color:Colors.white),
          child:  Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Visibility(
                          visible: isVisible,
                          // maintainSize: true,
                          // maintainAnimation: true,
                          // maintainState: true,
                          replacement:SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              decoration: new BoxDecoration(color:Colors.white),
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                    Container(
                                      margin: const EdgeInsets.only(bottom:20),
                                      child: TextField(
                                        controller: sourceController,
                                       decoration: InputDecoration(
                                         border: OutlineInputBorder(
                                         ),
                                         labelText: 'Source',
                                         enabledBorder: OutlineInputBorder(
                                             borderSide: BorderSide(color: RegistrationPage.background_color)
                                         ),
                                         focusedBorder: OutlineInputBorder(
                                             borderSide: BorderSide(color:RegistrationPage.background_color)
                                         ),

                                       ),
                                                                         ),
                                    ),
                                   TextField(
                                     controller: destinationController,
                                     decoration: InputDecoration(
                                       border: OutlineInputBorder(
                                       ),
                                       labelText: 'Destination',
                                       enabledBorder: OutlineInputBorder(
                                           borderSide: BorderSide(color: RegistrationPage.background_color)
                                       ),
                                       focusedBorder: OutlineInputBorder(
                                           borderSide: BorderSide(color:RegistrationPage.background_color)
                                       ),

                                     ),
                                   ),
                                 ],
                               ),



                            ),
                          ),

                          child: Container(
                            margin: const EdgeInsets.only(left: 15,right: 15),
                            child: TextField(
                              controller: nameController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                ),
                                labelText: 'Name',
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: RegistrationPage.background_color)
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color:RegistrationPage.background_color)
                                ),

                              ),
                            ),
                          ),
                        ),
                        Visibility(
                          visible: isVisible,
                          child: Container(
                            margin: const EdgeInsets.only(left: 15,right: 15),
                            child: TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Email',
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: RegistrationPage.background_color)
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: RegistrationPage.background_color),

                                ),
                              ),
                            ),
                          ),
                        ),
                        Visibility(
                          visible: isVisible,
                          child: Container(
                            margin: const EdgeInsets.only(left: 15,right: 15),
                            child: TextField(
                              controller: mobileController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Mobile No.',
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: RegistrationPage.background_color)
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: RegistrationPage.background_color),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Visibility(
                          visible: isVisible,
                          child: Container(
                            margin: const EdgeInsets.only(left: 15,right: 15),
                            child: TextField(
                              controller: sourceController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Source',
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: RegistrationPage.background_color)
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: RegistrationPage.background_color),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Visibility(
                          visible: isVisible,
                          child: Container(
                            margin: const EdgeInsets.only(left: 15,right: 15),
                            child: TextField(
                              controller: destinationController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Des.',
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: RegistrationPage.background_color)
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: RegistrationPage.background_color),
                                ),
                              ),
                            ),
                          ),
                        ),
                        new SizedBox(
                          child:  ElevatedButton(
                            onPressed: (){
                              setState(() {
                                if(isVisible==true){
                                  isVisible=false;
                                }
                                else{
                                  isVisible=true;
                                }
                              });

                            }, child:Text("Next"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: RegistrationPage.background_color,
                                textStyle: TextStyle(

                                    color: Colors.white,
                                    fontSize: 18

                                )
                            ),),


                        ),
                        ElevatedButton(
                          onPressed: (){
                            CollectionReference collRef =FirebaseFirestore.instance.collection('user_info');
                            collRef.add({
                              'name':nameController.text,
                              'Email':emailController.text,
                              'Mobile':mobileController.text,
                              'Source':sourceController.text,
                              'destination':destinationController.text,
                            });

                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder:
                                  (BuildContext context)=>homePage()));

                          }, child:Text("Submit"),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: RegistrationPage.background_color,
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18

                              )
                          ),),
                      ],
                    ),
          ),
    );

    return Scaffold(
      backgroundColor: const Color(0xff40BABE),
      appBar: AppBar(
        title: Text(''),
        backgroundColor: RegistrationPage.background_color

      ),
      body: Container(
          decoration: new BoxDecoration(color: RegistrationPage.background_color),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Firstblock,
                userInputCard,
                SizedBox(
                  height: 40,
                ),


              ],
            ),
          ),
        ),




    );

  }
  // Widget content(){
  //   return Container(
  //     child: CarouselSlider(
  //       items: [1, 2, 3, 4, 5].map((i) {
  //         return Container(
  //           width: MediaQuery.of(context).size.width,
  //           margin: EdgeInsets.symmetric(horizontal: 5),
  //           decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(20)
  //           ),
  //           child: Center(
  //               child: Text('text $i',style: TextStyle(fontSize: 20),)),
  //         );
  //       }).toList(),
  //       options:CarouselOptions(
  //       height: 300,
  //   )),
  //   );
  // }
}
