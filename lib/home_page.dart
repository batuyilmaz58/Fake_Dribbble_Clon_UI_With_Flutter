import 'package:dribbble/emoticon_faces.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
      ],),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // Hi, Jared!
                  children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hi, Jared!", style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text("23 Jan, 2025", style: TextStyle(color: Colors.blue[200]),)
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Icon(Icons.notifications, color: Colors.white),
                      ),
                    )
                  ],
                ),
                
                Padding(
                  padding: const EdgeInsets.only(top:10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blue[600],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.search, color: Colors.white,),
                          SizedBox(width:5),
                          Text("Search", style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 25,),

                // how do you feel?

                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("How do you feel?", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                    Icon(Icons.more_horiz, color: Colors.white,)
                  ],
                ),


                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          EmoticonFaces(emoticon: "😀"),
                          SizedBox(height: 8),
                          Text("Well", style: TextStyle(color: Colors.white),),
                        ],
                      ),
                      Column(
                        children: [
                          EmoticonFaces(emoticon: "☺️"),
                          SizedBox(height: 8),
                          Text("Fine", style: TextStyle(color: Colors.white),),
                        ],
                      ),
                      Column(
                        children: [
                          EmoticonFaces(emoticon: "😫"),
                          SizedBox(height: 8),
                          Text("Bad", style: TextStyle(color: Colors.white),),
                        ],
                      ),
                      Column(
                        children: [
                          EmoticonFaces(emoticon: "🥳"),
                          SizedBox(height: 8),
                          Text("Excellent", style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Exercises", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                    Icon(Icons.more_horiz, color: Colors.white,)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)
                    ),
                    child: ListTile(leading: Container(
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.favorite, color: Colors.white,),
                    )), title: Text("Speaking Skills", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,),), subtitle: Text("16 Exercises"),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16)
                    ),
                    child: ListTile(leading: Container(
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.person, color: Colors.white,),
                        )), title: Text("Reading Skills", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,),), subtitle: Text("8 Exercises"),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16)
                    ),
                    child: ListTile(leading: Container(
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.star, color: Colors.white,),
                        )), title: Text("Writing Skills", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,),), subtitle: Text("20 Exercises"),),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
