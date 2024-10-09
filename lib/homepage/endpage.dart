import 'package:exercises/homepage/bottonnavbar.dart';
import 'package:flutter/material.dart';
class endpage extends StatefulWidget {
  const endpage({super.key});

  @override
  State<endpage> createState() => _endpageState();
}

class _endpageState extends State<endpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top:100),
            child: Text("Let Start",style: TextStyle(
                fontSize: 40,
                fontWeight:FontWeight.w500),),
          ),
          Padding(
            padding: const EdgeInsets.only(top:170),
            child: Image(image: AssetImage("ima/end.png"),width: 900,),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>hompage()));
            },
            child: Padding(
              padding: EdgeInsets.only(top:200),
              child: Container(
                height: 60,
                width: 430,
                decoration: BoxDecoration(
                    color: Color(0xFFF5CEB8),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Center(child: Text("Start",style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w500
                ),),),
              ),
            ),
          ),

              ],
            ),




    );
  }
}
