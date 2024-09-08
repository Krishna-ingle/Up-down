import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget{

  @override
  State<homePage> createState() => _homePage();

}

class _homePage extends State<homePage> {
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text(' '),
          backgroundColor: Colors.white,
        ),
        body:
      StreamBuilder<QuerySnapshot>(
          stream:FirebaseFirestore.instance.collection('user_info').snapshots(),
          builder: (context,snapshot){
            List<Row> userWidgets=[];

            if(snapshot.hasData){
              final users = snapshot.data?.docs.reversed.toList();
              for(var user in users!){
                final userWidget = Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child:Column(
                        children: [
                          Text(user['name']),
                          Text(user['Email']),
                          Text(user['Mobile']),
                        ],
                      )
                    )

                  ],
                );
                userWidgets.add(userWidget);
              }
            }
            return Expanded(
              child: ListView(
                children: userWidgets,
              
                  ),
            );
          }
      )
    );
  }

}
