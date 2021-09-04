import 'package:flutter/material.dart';
class getStarted extends StatefulWidget {
  @override
  _getStartedState createState() => _getStartedState();
}

class _getStartedState extends State<getStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              height: MediaQuery.of(context).size.height*0.2,
              child: Image(image: AssetImage('assets/logo.png'),),
            ),
          ),
          /*SizedBox(
            width: MediaQuery.of(context).size.width*0.08,
              child: Expanded(child: Divider(thickness: 3))
          ),*/
          Align(
            //alignment: Alignment.topCenter,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.25,
                  width:  MediaQuery.of(context).size.width*0.8,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Text("Get Started",textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
                      ),
                      SizedBox(
                        //width: MediaQuery.of(context).size.width*0.5,
                        child: Text("Hello user! Welcome to the ToDO List app,this is a default task that can be edited or deleted to start using the app",
                          textAlign: TextAlign.center,),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add,),
        backgroundColor: Color(0xFF138D75),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
      ),
    );
  }
}
