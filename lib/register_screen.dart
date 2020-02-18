import 'package:flutter/material.dart';

class register_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: (){
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Container(

          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [
                    Color(0xffA4262C),
                    Color(0xff737373),
                  ]
              )
          ),
          child: Center(
            child: Container(

              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  SizedBox(height: 60,),

                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Summoner Name",
                          hintStyle: TextStyle(color: Colors.grey),
                          //fillColor: Colors.white,
                          border: InputBorder.none
                      ),
                    ),
                  ),

                  RaisedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Go Back'),
                  ),
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}