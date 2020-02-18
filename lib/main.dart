import 'package:clasherbeta/NavigationBar.dart';
import 'package:clasherbeta/register_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(

    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  )
);

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
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
             //Color(0xff90ccf4)
             ]
           )
         ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 35,),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Welcome", style: TextStyle(color: Colors.white, fontSize: 40)),
                    SizedBox(height: 10,),
                    Text("Login or Register", style: TextStyle(color: Colors.white, fontSize: 18)),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 60,),
                        Container(

                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(225, 95, 27, 0),
                                blurRadius: 20,
                                offset: Offset(0,10)
                              ),
                            ],
                          ),
                          child: Column(
                            children: <Widget>[
                              //
                              // THE CONTAINER FOR THE Username BELLOW
                              //
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Email or Username",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none
                                  ),
                                ),
                              ),
                              //
                              // THE CONTAINER FOR THE PASSWORD BELLOW
                              //
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 25, ),

                        Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.orange[900]
                          ),
                          child: FlatButton(
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(50),
                            ),
                            onPressed: (){
                              print("Pressed");
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NavigationBar()));
                            },
                            child: Center(
                              child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                            ),
                          ),
                        ),

                        SizedBox(height: 20,),

                        Row(
                          children: <Widget>[
                            Text("       Dont have an account? ", style: TextStyle(color: Colors.grey),),
                            SizedBox(width: 2,),
                            FlatButton(
                                padding: new EdgeInsets.fromLTRB(10,10,10,10),
                                child:Text("Register ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold), ),
                                onPressed: (){
                                  print("Register");
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => register_screen()));
                                  },
                            ),
                          ],
                        ),

                        SizedBox(height: 5,),

                        Row(

                          children: <Widget>[

                            Expanded(
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.blue,
                                ),
                                child: FlatButton(

                                  shape: new RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(50),
                                  ),
                                  child: Center(

                                    child: Text("Facebook", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),

                                  ),
                                  onPressed: (){print("Facebook Pressed");},
                                ),
                              ),
                            ),
                            SizedBox(width: 30,),
                            Expanded(
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color(0xffd44638),
                                ),
                                child: FlatButton(
                                  shape: new RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(50),
                                  ),
                                  child: Center(
                                    child: Text("Gmail", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                                  ),
                                  onPressed: (){print("Gmail Pressed");},
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 17,),
                        Text("Login or Register with social media", style: TextStyle(color: Colors.grey),),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}