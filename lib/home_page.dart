import 'package:flutter/material.dart';
class Homepage extends StatefulWidget {
  static final String id="home_page";

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
         backgroundColor: Colors.black,
        actions: [
          Container(
            padding: EdgeInsets.only(left: 20,right: 16,bottom: 15),
            child: GestureDetector(
               onTap: (){
                 Navigator.pushReplacementNamed(context, "simble_page");
               },
                child: Text("Skip",style: TextStyle(color: Colors.green,fontSize: 20),)),
          ),
        ],
      ),
      body: PageView(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 20,right: 20,top: 60,
                ),
                padding: EdgeInsets.all(50),
                child: Image.asset("assets/images/intro.png",),
              ),

              Text("Learn from experts",style: TextStyle(color: Colors.green,fontSize: 30),),
              SizedBox(height: 20,),
              Container(
                width: 200,
                child: Expanded(
                  child: Text("Select from top instructors\n         around the world",style: TextStyle(fontSize: 16,color: Colors.grey[600]),),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 20,right: 20,top: 60,
                ),
                padding: EdgeInsets.all(50),
                child: Image.asset("assets/images/intro1.png",),
              ),

              Text("Go at your own pace",style: TextStyle(color: Colors.green,fontSize: 30),),
              SizedBox(height: 20,),
              Container(
                width: 200,
                child: Expanded(
                  child: Text("Enjoy lifetime access to courses on Udemy’s website and app",style: TextStyle(fontSize: 16,color: Colors.grey[600]),),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 20,right: 20,top: 60,
                ),
                padding: EdgeInsets.all(50),
                child: Image.asset("assets/images/intro2.png",),
              ),

              Text("Find video courses",style: TextStyle(color: Colors.green,fontSize: 30),),
              SizedBox(height: 20,),
              Container(
                width: 200,
                child: Expanded(
                  child: Text("Build your library for your career and personal growth",style: TextStyle(fontSize: 16,color: Colors.grey[600]),),
                ),
              ),
            ],
          ),

        ],
      )
    );
  }
}
