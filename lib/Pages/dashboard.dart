import 'package:flutter/material.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [

            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //
            // )

            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 8),
                  height: size.height/5,
                  width: size.width/1.5,
                  color: Colors.blueGrey,
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjZEcP2NkJQgEzAbBaG49jkD5TOG9hI9VALB1a_-vXlQ&s=10",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top: 8),
                    height: size.height/4.5,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    width: size.width/1.1,

                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjZEcP2NkJQgEzAbBaG49jkD5TOG9hI9VALB1a_-vXlQ&s=10",
                        fit: BoxFit.cover,
                      ),
                    )
                ),
                Positioned(bottom: 40 ,left: 30,
                    child: Container(width: size.width/2,
                        child: Text("L5 PCPS News news happy dashain",
                          overflow: TextOverflow.ellipsis,maxLines: 2,
                          style: TextStyle(color: Colors.black,
                          ),))),
                Positioned(bottom: 20 ,left: 30,
                    child: Container(width: size.width/2,
                        child: Text("October 6,2026",
                          overflow: TextOverflow.ellipsis,maxLines: 1,
                          style: TextStyle(color: Colors.black,),)
                    )),
                Positioned(bottom: 20 ,left: 250,
                    child: Container(
                        child: Icon(Icons.play_circle, color: Colors.black,)
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}