import 'package:flutter/material.dart';
import 'package:todo_list/todo.dart';
class getStarted extends StatefulWidget {
  @override
  _getStartedState createState() => _getStartedState();
}

class _getStartedState extends State<getStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
            Expanded(
              child: ListView(
                children: [
                  todo(title: "Get Started", desc: "Hello user! Welcome to the ToDO List app,this is a default task that can be edited or deleted to start using the app",),
                  todo(),todo(),
                  todo(),todo(),todo(),

                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add,),
        backgroundColor: Color(0xFF138D75),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
      ),
    );
  }
}
