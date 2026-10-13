import 'package:flutter/material.dart';

class detailpage extends StatefulWidget {
  const detailpage({super.key});

  @override
  State<detailpage> createState() => _detailpageState();
}

class _detailpageState extends State<detailpage> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 55,),
          Stack(
              children:[
                Container(
                  height: size.height/4.5,
                  width: size.width,
                  child:
                  Image.network(fit:BoxFit.cover ,"https://images.pexels.com/photos/19943722/pexels-photo-19943722.jpeg")
                  ,
                ),
                Container(
                  height: size.height/4.5,
                  width: size.width,
                  color: Colors.black45,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(Icons.arrow_back,
                    color: Colors.white,
                    size: 40,),
                ),
                Positioned(right:5,
                    child:Padding(
                      padding: EdgeInsets.all(15),
                      child: Icon(Icons.share,
                        color: Colors.white,
                        size: 40,),
                    )),
                Container(
                  height: size.height/4,
                  child: Center(
                      child:
                      Icon(Icons.play_circle_fill,
                        size: 60,
                        color: Colors.white,)
                  ),
                )
              ]
          ),

          SizedBox(height: 15,),
          Text("Happy Dashain Everyone",
            style: TextStyle(fontSize: 20),maxLines: 2,)
        ],
      ),
    );
  }
}