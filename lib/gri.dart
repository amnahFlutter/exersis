import 'package:flutter/material.dart';
class gri extends StatefulWidget {
  const gri({super.key});

  @override
  State<gri> createState() => _griState();
}

class _griState extends State<gri> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold( body:Padding(padding: EdgeInsets.only(top: 10, left: 10,right: 10),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                childAspectRatio:0.85,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10
            ),
            itemCount:4,
            itemBuilder:(context,index){
              return
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13),

                    ),
                    child:Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(top: 8.0),
                          child: Image(image:AssetImage(im[index],),
                            height:200,
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
            }
        ))

    );





  }
}




