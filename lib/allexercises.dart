
import 'package:flutter/material.dart';

import 'homepage/page2.dart';
class allexercises extends StatefulWidget {
  const allexercises({super.key});

  @override
  State<allexercises> createState() => _allexercisesState();
}

class _allexercisesState extends State<allexercises> {
  @override
  final List im=[
    "ima/p.jpg",
    "ima/t.jpg",
    "ima/3.jpg",
    "ima/a.jpg",
  ];
  final List textex=[
    "Sukhasana",
    "Padmasana",
    "Eka Pada",
    "Sukhasana",
  ];

  Widget build(BuildContext context) {
    return Scaffold(
    body:SingleChildScrollView(
    child:Column(
    children: [
    Stack(
    children: [
    Container(
    width:double.infinity,
    height: 450,
    decoration: BoxDecoration(
    color: Color(0xFFF5CEB8),
    image: DecorationImage(
    alignment: Alignment.centerLeft,
    image: AssetImage("ima/undraw_pilates_gpdb.png",),
    fit: BoxFit.contain
    )
    ),
    ),
    Padding(
    padding: EdgeInsets.only(left: 390,
    top:50, right: 20),
    child: Container(
    height: 50,
    width: 50,
    decoration: BoxDecoration(
    color: Color(0xFFFF9C00),
    shape: BoxShape.circle,
    ),
    child: Center(
    child: Icon(Icons.drag_handle,
    size:40,
    color: Colors.white,
    ),
    ),
    ),
    ),
    Padding(
    padding: EdgeInsets.only(left:50,top:100,
    right: 50),
    child: Text("Good Morning Sports Woman",
    style:TextStyle(fontSize:35,fontWeight: FontWeight.w500),),
    ),
    Padding(
    padding:  EdgeInsets.only(left: 20,
    top: 260,
    right: 20
    ),
    child: TextField(
    decoration: InputDecoration(
    filled: true,
    fillColor:Colors.white,
    hintText: "Search",
    prefixIcon: Icon(Icons.search),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(40),
    borderSide: BorderSide(color: Colors.white),
    ),
    enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(40),
    borderSide: BorderSide(color: Colors.white),
    ),
    focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(40),
    borderSide: BorderSide(color: Colors.white),
    ),
    ),
    ),
    ),
    SizedBox(
      height: 1000,
      child:Padding(
        padding:  EdgeInsets.only(top:350,left: 10,right: 10),
        child: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 15),
            itemCount:4,
            itemBuilder:(context,index){
          return GestureDetector(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => page2()));
            },
            child:Container(
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
              boxShadow: [BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 17,
                spreadRadius: -23,
                color: Color(0xFFFF9C00)
              ),
            ]
              ),
              child:Column(
              children: [
              Padding(
              padding:  EdgeInsets.only(top:2.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(13),
                child: Image(image:AssetImage(im[index],),
                height:166,
                  width: 250,
                
                  fit: BoxFit.cover,
                ),
              ),
              ),
              Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text(textex[index],
              style:TextStyle(
              fontWeight:FontWeight.w500,
              fontSize: 20

              ),),
              )

              ],
              ),
            ),
              );
            }),
      )
    )
    ],
    ),
    ],
    ),
    ),
    );
  }
}
