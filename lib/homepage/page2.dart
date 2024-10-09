import 'package:exercises/allexercises.dart';
import 'package:flutter/material.dart';
class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  final List<String> sessions = [
    'Session 01',
    'Session 02',
    'Session 03',
    'Session 04',
    'Session 05',
    'Session 06'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
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
                  padding: const EdgeInsets.only(top: 30,left: 10),
                  child: IconButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => allexercises()));
                  }, icon: Icon(Icons.arrow_back_ios)),
                ),
                Padding(
                  padding: EdgeInsets.only(left:15,top:80,
                      right: 50),
                  child: Text("Meditation",
                    style:TextStyle(fontSize:35,fontWeight: FontWeight.w600),),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 130 ,left: 15),
                  child: Text("3-10 of the course",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ),
                Padding(padding: EdgeInsets.only(top:160,left: 15,
                    right: 15),
                  child: Text(" Live happier and healthier by learning the fundamentals of meditation and mindfulness",style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),),),
                Padding(
                  padding:  EdgeInsets.only(left: 20,
                      top: 260,
                      right: 20
                  ),
                  child: Container(
                    width: 200,
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
                ),
                Container(width: 300,
                    height: 300,
                    margin: EdgeInsets.only(top:130,left: 193,),
                    child: Image(image: AssetImage("ima/mverg.png"))),
                SizedBox(
                  height: 800,
                  child: Padding(
                    padding: const EdgeInsets.only(top:370,left: 20,right: 20),
                    child: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 20,
                        childAspectRatio: 2),
                        itemCount: 6,

                        itemBuilder:(context,index){
                          return index == 0
                              ? Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow:[BoxShadow(
                                    color: Colors.black38,
                                    blurRadius: 9,
                                    spreadRadius: 3,
                                    offset:Offset (0,9)
                                )]
                            ),
                            child:Row(
                              children: [
                                Padding(
                                  padding:  EdgeInsets.all(8.0),
                                  child: Icon(Icons.play_circle,size: 70,color:Color(0xFFF5CEB8),),
                                ),
                                Text(sessions[index],style:TextStyle(
                                    fontSize: 20,
                                    fontWeight:FontWeight.w600
                                ),)

                              ],
                            ),
                          )
                              : Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 9,
                                  spreadRadius: 3,
                                  offset: Offset(0, 9),
                                )
                              ],
                            ),
                            child: Row(
                              children: [
                                Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(color:Colors.black,width: 2),

                                      ),
                                      child:Icon(Icons.play_arrow,size:40,),
                                    )
                                ),
                                Text(
                                  sessions[index],
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          );

                        } ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 760,left: 30),
                  child: Text("Meditation",style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w600
                  ),),

                ),
                Padding(
                  padding:  EdgeInsets.only(top: 810,left: 20,right: 20),
                  child: ListTile(
                    leading:Image(image: AssetImage("ima/mverg.png"),),
                    title: Text("Basics",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                    subtitle: Text("start your deep you practice",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600,color: Colors.black),),
                    trailing: Icon(Icons.lock,color: Colors.black,),
                    tileColor: Color(0xFFF5CEB8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),

                    ),

                  ),
                )

              ],
            ),

          ],
        ),
      ),

    );
  }
}
