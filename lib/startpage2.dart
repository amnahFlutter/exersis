import 'package:exercises/homepage/endpage.dart';
import 'package:flutter/material.dart';
class Startpage2 extends StatefulWidget {
  const Startpage2({super.key});

  @override
  State<Startpage2> createState() => _Startpage2State();
}

class _Startpage2State extends State<Startpage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top:100),
            child: Text(" Let Be More Active",style: TextStyle(
                fontSize: 30,
                fontWeight:FontWeight.w500),),
          ),
          Padding(
            padding: const EdgeInsets.only(top:20),
            child: Image(image: AssetImage("ima/startpage.png"),width: 900,),
          ),
          Padding(
            padding:  EdgeInsets.only(top:30,left: 10,right: 10),
            child: Text(
              "Practicing yoga with a partner is a unique experience that enhances communication and understanding between both parties. This practice combines physical movements and meditation, helping to strengthen the relationship and increase intimacy."
             " When you practice yoga together, you can explore new poses that require collaboration  ",
              style: TextStyle(fontSize: 17),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>endpage()));
            },
            child: Row(
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 330,top: 80,
                  ),
                  child: Text("Next",style: TextStyle(
                      fontSize: 30
                  ),),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 80),
                  child: Icon(Icons.arrow_forward,size: 40,),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
