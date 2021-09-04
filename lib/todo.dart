import 'package:flutter/material.dart';

class todo extends StatelessWidget {
  final String title,desc;
  todo({this.title,this.desc});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.fromLTRB(30, 0, 30, 18),
      child: Container(
        //height: 85,
        width:  double.infinity,
        padding: EdgeInsets.fromLTRB(20, 15, 0, 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 13),
                    child: Text(title ?? "Untitled",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                  ),
                  SizedBox(//width: MediaQuery.of(context).size.width*0.6,
                      child: Text(desc ?? ""))
                ],
              ),
            ),
            //Spacer(),
            FlatButton(
                onPressed: (){},
                child: Container(
                  height: 20,
                    width: 20,
                  margin: EdgeInsets.symmetric(vertical: 13),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF138D75)),
                    shape: BoxShape.circle
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
