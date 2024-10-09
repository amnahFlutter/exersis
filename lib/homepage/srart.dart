import 'package:exercises/startpage2.dart';
import 'package:flutter/material.dart';
class start extends StatefulWidget {
  const start({super.key});

  @override
  State<start> createState() => _startState();
}

class _startState extends State<start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top:100),
            child: Text("Welcom To Yoga",style: TextStyle(
                fontSize: 30,
                fontWeight:FontWeight.w500),),
          ),
          Padding(
            padding: const EdgeInsets.only(top:20),
            child: Image(image: AssetImage("ima/mverg.png"),width: 900,),
          ),
          Padding(
            padding:  EdgeInsets.only(top:10,left: 10,right: 10),
            child: Text(
              "Yoga is a comprehensive practice that offers numerous benefits for both the body and mind. Among its most notable advantages are improved flexibility and muscle strength, which help reduce injuries and enhance balance. Breathing techniques and meditation contribute to lowering stress and anxiety levels, promoting a sense of calm and mental well-being. Additionally, ",
              style: TextStyle(fontSize: 16),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>Startpage2()));
            },
            child: Row(
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 330,top: 100,),
                  child: Text("Next",style: TextStyle(
                      fontSize: 30
                  ),),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 100),
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
