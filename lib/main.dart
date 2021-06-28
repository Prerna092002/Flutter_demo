import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Verzeo Task',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget{
  final namecontroller=new TextEditingController();
  @override
  Widget build(BuildContext context){
    final urlImage1='assets/Faccebook.jpeg';
    final urlImage2="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-_pagno0IRL_iEzHFS0JsNij_3CRxIDsWCQ&usqp=CAU";
    final urlImage3="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSW9n-2alBNO8ok2rl55F16So_vVEX6_HROlw&usqp=CAU";
    return Scaffold(
      appBar: AppBar(
     //   centerTitle: true,
        title: Text("Apps"),
      //  leading: Icon(Icons.person),
        actions: [
          Icon(Icons.login),
          Icon(Icons.logout),
        ],
        ),
        drawer: Drawer(
          child:Column(children: [
            Center(
              child: Container(
              
                width: 500,
                height: 100,
                color: Colors.blue,
              //  style:TextStyle(fontSize: 70),
              padding: EdgeInsets.only(top: 50.0),
              
                child: Text("Welcome User",style: TextStyle(color:Colors.white,fontSize: 40),)),
            ),
            ListTile(
              title: Text("Login"),
              trailing: Icon(Icons.login),
              ),
              
              Divider(thickness: 4,),
               ListTile(
              title: Text("Logout"),
              trailing: Icon(Icons.logout),
              ),
              Divider(thickness: 4,),
               ListTile(
              title: Text("Support"),
              trailing: Icon(Icons.support),
              ),
              Divider(thickness: 4,),
               ListTile(
              title: Text("Settings"),
              trailing: Icon(Icons.settings),
              ),
              Divider(thickness: 4,),

          ],) ,),
     body: ListView(
       
       children: <Widget>[
          TextField(
            controller: namecontroller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter your name",
            )

          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
           
            //  Padding(padding:EdgeInsets.only(left: 100.0)),
              Icon(Icons.facebook,size: 80,color: Colors.blue,),
              Icon(Icons.local_taxi_sharp,size: 80,),
              Icon(Icons.games,size: 80,color: Colors.grey,),
            ],
          ),
        
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 Image.asset(
                  urlImage1,
                    height: 200.0,
                    ),
                Image.network(
                   urlImage2,
                   height: 200,
                   ),
               Image.network(
                  urlImage3,
                  height: 200,
                 )
               ],
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 Text("Facebook",style: TextStyle(fontSize: 30),),
                  Text("Uber",style: TextStyle(fontSize: 30),),
                   Text("Games",style: TextStyle(fontSize: 30),),
               ],
             ),
           ElevatedButton(onPressed:(){
           var name_entered=namecontroller.text;
           print("Name $name_entered");
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenTwo(guestname: name_entered,)));
         },
          child: Container(
            height: 50,
          padding: EdgeInsets.only(bottom:10),
            child: Text("Next",style: TextStyle(fontSize: 30),)))
         
       ],)
  );
  
  }
}
class ScreenTwo extends StatelessWidget{
  final guestname;
  ScreenTwo({@required this.guestname});
  Widget build(BuildContext context){
    return Scaffold(
appBar: AppBar(
  centerTitle: true,
  leading: Icon(Icons.arrow_back),
  title:Text("Screen 2"),
  ),
  body:Column(children:<Widget> [
    Center(child: Text("Thankyou $guestname for Submitting",style: TextStyle(fontSize: 50),))
  ],)
    );
  }
}

 