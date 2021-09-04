import 'package:flutter/material.dart';
import 'package:todo_list/getStarted.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToDo List"),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Spacer(),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.2,
              child: Image(
                image: AssetImage('assets/logo.png'),),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Text("ToDo List",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width*0.6,
                child: Text("ToDo is a simple app to list your tasks and check them when finished!",textAlign: TextAlign.center,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: ElevatedButton(
                onPressed:() => Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => getStarted())),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF138D75),
                  padding: EdgeInsets.symmetric(horizontal: 100,vertical: 20),
                  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(12))
                ),
                child: Text("Get Started",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            )
          ],
        ),
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
