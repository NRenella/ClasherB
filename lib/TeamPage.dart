import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import 'package:clasherbeta/summoner.dart';
import 'package:clasherbeta/config.dart';

Future<summoner> fetchSummoner() async{
  config key = new config();
  final response = await http.get('https://na1.api.riotgames.com/lol/summoner/v4/summoners/by-name/dianelovesramen?api_key=' + key.key);

  if(response.statusCode == 200){
    return summoner.fromJson(json.decode(response.body));
  } else{
    throw Exception('Failed to load Summoner');
  }
}

Future<summoner> sum;

void main() => runApp(TeamPage());

class TeamPage extends StatefulWidget{
  TeamPage({Key key}) : super(key: key);
  @override
  _TeamPageState createState() => new _TeamPageState();

}

class _TeamPageState extends State<TeamPage> {
  @override
  void initState() {
    super.initState();
    sum = fetchSummoner();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg-default.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 40,),

                  FutureBuilder<summoner>(
                    future: sum,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                          children: <Widget>[

                            Container(
                            alignment: Alignment.centerRight,
                              height: 150,

                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/logos/RaptorLogo.png'),
                                ),
                              ),
                            ),
                            SizedBox(height: 30,),

                            Container(
                              height: 75,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                              margin: EdgeInsets.all(15.0),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.all(10.0),
                                    child: Text(
                                      "Players",
                                      style: TextStyle(
                                        fontFamily: 'Helvetica',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ]
                              ),
                            ),
                          ]
                        );
                      } else if (snapshot.hasError) {
                        return Text("${snapshot.error}");
                      }
                      // By default, show a loading spinner.
                      return CircularProgressIndicator();
                  },
                ),
            ]
          ),
        ),
      ),
    );

  }
}